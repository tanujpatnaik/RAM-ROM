module dual_port_ram(q_a,q_b,data_a,data_b,addr_a,addr_b,wr_a,wr_b,clk);
input [7:0] data_a,data_b;
input [5:0] addr_a,addr_b;
input wr_a,wr_b,clk;
output reg [7:0] q_a,q_b;
reg [7:0] ram [63:0];
  always@(posedge clk)//working of port one.
begin
    if(wr_a)
    ram[addr_a] <= data_a;
    else
    q_a <= ram[addr_a];
end
  always@(posedge clk)//working of port two.
begin
    if(wr_b)
    ram[addr_b] <= data_b;
    else
    q_b <= ram[addr_b];
end
endmodule
