`timescale 1ns/1ps

module sync_counter_tb;

    reg        gclk;
    reg        rst_n;
    reg        en;
    wire [9:0] count;

    sync_counter dut (
        .gclk  (gclk),
        .rst_n (rst_n),
        .en    (en),
        .count (count)
    );

    always #5 gclk = ~gclk;

    initial begin
        $dumpfile("sync_counter.vcd");
        $dumpvars(0, sync_counter_tb);

        gclk  = 0;
        rst_n = 0;
        en    = 0;

        #12;
        rst_n = 1;

        #5;
        en = 1;

        #200;

        rst_n = 0;
        #10;
        rst_n = 1;

        #100;

        en = 0;
        #30;

        $finish;
    end

    initial begin
        $monitor("t=%0t rst_n=%b en=%b count=%d",
             $time, rst_n, en, count);
    end

endmodule
