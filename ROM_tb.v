module rom_tb;
reg clk;
reg en;
reg [4:0] addr;
wire [7:0] data;
  rom do(.clk(clk),.en(en),.addr(addr),.data(data));//instantiation of module
initial
begin
    $dumpfile("rom.vcd");
    $dumpvars(1,rom_tb);
    clk=1'b1;//generation of clock
    forever #1 clk=~clk;
end
initial
begin
    $display($time,"data=%d,addr=%d,clk=%b,en=%b",data,addr,clk,en);
    en = 1'b0;
    addr = 5'd07;
    #2;

    en = 1'b1;
    addr = 5'd10;
    #2;

    addr = 5'd14;
    #2;

    addr = 5'd17;
    #2;

    en = 1'b0;
    addr = 5'd21;
    #2;

    en = 1'b1;
    addr = 5'd31;
    #2;

    addr = 5'd26;
    #2;

    addr = 5'd09;
    #2;

    addr = 5'd11;
    #2;

    addr = 5'd29;
    #2;

    addr = 5'bxxxxx;
    #2;

    $finish;
end
endmodule
