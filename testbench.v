module testbench;

reg clk;
reg reset;
wire [31:0] pc;

cpu uut(
    .clk(clk),
    .reset(reset),
    .pc(pc)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    #10 reset = 0;
    #100 $finish;
end

endmodule
