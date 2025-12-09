module Loongarch32_Lite_FullSyS(
    input clk,  // 50Mhz
    input locked,
    
    input                   rxd,                // 串口接收端
    output logic            txd,                // 串口发送端
    
    input [31:0]            sw_1,           // 第一组拨码开关
    input [31:0]            sw_2,           // 第二组拨码开关
    output logic [31:0]     led,            // led灯
    output logic [3:0]             seg_cs,        // 7段数码管选择信号
    output logic [7:0]             seg_data,      // 7段数码管数据
    input [7:0]             btn            // 按钮
    );
    
    logic rst_n;
    
    // 将locked信号转为后级电路的复位信号rst_n
    always_ff @(posedge clk or negedge locked) begin
        if(~locked) rst_n = 1'b0; 
        else        rst_n = 1'b1;
    end
    
    // 生成数码管选择信号和数据
    logic [3:0] seg_wdata[0:8];
    x7seg seg_cs_data_gen0 (
        .clk(clk),
        .seg_wdata(seg_wdata),
        .seg_cs(seg_cs),
        .seg_data(seg_data)
    );
    
    // 如下代码仅为第一组拨码开关控制 led 灯演示示例，请根据设计要求自行修改
    logic [31:0] sw_1_ff;
    always_ff @(posedge clk or negedge rst_n) begin
        if(~rst_n) sw_1_ff <= 0;
        else sw_1_ff <= sw_1;
    end
    assign led = sw_1_ff;
    
    // 如下代码仅为直连串口接收发送演示示例（即从直连串口收到的数据再发送回串口），请根据设计要求自行修改
    logic [7:0] ext_uart_rx;
    logic [7:0] ext_uart_buffer, ext_uart_tx;
    logic ext_uart_ready, ext_uart_clear, ext_uart_busy;
    logic ext_uart_start, ext_uart_avai;

    async_receiver #(.ClkFrequency(50000000),.Baud(9600)) //接收模块，9600无检验位
    ext_uart_r(
        .clk(clk),                       //外部时钟信号
        .RxD(rxd),                           //外部串行信号输入
        .RxD_data_ready(ext_uart_ready),  //数据接收到标志
        .RxD_clear(ext_uart_clear),       //清除接收标志
        .RxD_data(ext_uart_rx)             //接收到的一字节数据
    );

    assign ext_uart_clear = ext_uart_ready; //收到数据的同时，清除标志，因为数据已取到ext_uart_buffer中
    always @(posedge clk ) begin //接收到缓冲区ext_uart_buffer
        if(ext_uart_ready)begin
            ext_uart_buffer <= ext_uart_rx;
            ext_uart_avai <= 1;
        end else if(!ext_uart_busy && ext_uart_avai)begin 
            ext_uart_avai <= 0;
        end
    end
    always @(posedge clk) begin //将缓冲区ext_uart_buffer发送出去
        if(!ext_uart_busy && ext_uart_avai)begin 
            ext_uart_tx <= ext_uart_buffer;
            ext_uart_start <= 1;
        end else begin 
            ext_uart_start <= 0;
        end
    end

    async_transmitter #(.ClkFrequency(50000000),.Baud(9600)) //发送模块，9600无检验位
    ext_uart_t(
        .clk(clk),                  //外部时钟信号
        .TxD(txd),                      //串行信号输出
        .TxD_busy(ext_uart_busy),       //发送器忙状态指示
        .TxD_start(ext_uart_start),    //开始发送信号
        .TxD_data(ext_uart_tx)        //待发送的数据
    );
    
    // 如下代码仅为7段数码管(0-1)显示缓冲区数据演示示例，请根据设计要求自行修改
    assign seg_wdata[0] = ext_uart_buffer[3:0];
    assign seg_wdata[1] = ext_uart_buffer[7:4];
    
    // 如下代码仅为第二组拨码开关(1-20)控制7段数码管(2-6)演示示例，请根据设计要求自行修改
    logic [31:0] sw_2_ff;
    always_ff @(posedge clk or negedge rst_n) begin
        if(~rst_n) sw_2_ff <= 0;
        else sw_2_ff <= sw_2;
    end
    assign seg_wdata[2] = sw_2_ff[3:0];
    assign seg_wdata[3] = sw_2_ff[7:4];
    assign seg_wdata[4] = sw_2_ff[11:8];
    assign seg_wdata[5] = sw_2_ff[15:12];
    assign seg_wdata[6] = sw_2_ff[19:16];
    
    // 如下代码仅为8个按钮控制7段数码管(7-8)演示示例，请根据设计要求自行修改
    logic [7:0] btn_ff;
    always_ff @(posedge clk or negedge rst_n) begin
        if(~rst_n) btn_ff <= 0;
        else btn_ff <= btn;
    end
    assign seg_wdata[7] = btn_ff[3:0];
    assign seg_wdata[8] = btn_ff[7:4];
    
    
    
    /* --------------TODO----------------
     * 实例化 CPU 核
     * 时钟信号为 clk
     * 复位信号为 rst_n，低电平有效
     * ---------------------------------- */
     
     /* --------------TODO---------------
      * 实例化已生成的 data_ram 和 inst_rom
      * --------------------------------- */
      
endmodule