`timescale 1ns / 1ps

module tb_Loongarch32_Lite_FullSyS ();
    // 1. 定义信号
    logic clk;
    logic locked;
    logic rxd;
    wire  txd;

    // 2. 产生时钟 (50MHz)
    initial begin
        clk = 0;
        forever #10 clk = ~clk;  // 周期 20ns
    end

    // 3. 产生复位序列 (核心修改！)
    initial begin
        // 初始状态：先拉低 locked，让 CPU 进入复位状态
        locked = 0;
        rxd = 1;  // 串口空闲时为高电平

        // 保持复位一段时间 (例如 200ns)，确保所有寄存器都被清零
        #200;

        // 释放复位：拉高 locked，CPU 开始工作
        locked = 1;
    end

    // 4. 实例化 SoC
    // 请确保这里的端口名(.clk, .locked)与你的 Loongarch32_Lite_FullSyS.sv 里的定义一致
    // 如果你的 SoC 端口叫 cpu_clk，请改成 .cpu_clk(clk)
    Loongarch32_Lite_FullSyS SoC (
        .sys_clk  (clk),
        .sys_rst_n(locked)
    );

    // 5. 观察信号
    logic cpu_clk, cpu_rst_n;
    logic [31:0] debug_wb_pc;
    logic        debug_wb_rf_wen;
    logic [ 4:0] debug_wb_rf_wnum;
    logic [31:0] debug_wb_rf_wdata;

    assign cpu_clk           = SoC.cpu_clk;  // 确保 SoC 内部有这个信号
    assign cpu_rst_n         = SoC.cpu_rst_n;  // 确保 SoC 内部有这个信号
    assign debug_wb_pc       = SoC.debug_wb_pc;
    assign debug_wb_rf_wen   = SoC.debug_wb_rf_wen;
    assign debug_wb_rf_wnum  = SoC.debug_wb_rf_wnum;
    assign debug_wb_rf_wdata = SoC.debug_wb_rf_wdata;

    // 6. 打印 trace 信息
    always @(posedge cpu_clk) begin
        if (debug_wb_rf_wen && debug_wb_rf_wnum != 5'd0) begin
            $display("--------------------------------------------------------------");
            $display("[%t]ns", $time);
            $display("reference: PC = 0x%8h, wb_rf_wnum = 0x%2h, wb_rf_wdata = 0x%8h", debug_wb_pc,
                     debug_wb_rf_wnum, debug_wb_rf_wdata);
            $display("--------------------------------------------------------------");
        end
    end

endmodule
