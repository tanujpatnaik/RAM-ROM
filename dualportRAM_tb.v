module dual_port_ram_tb;
reg [7:0] data_a,data_b;
reg [5:0] addr_a,addr_b;
reg wr_a,wr_b,clk;
wire [7:0] q_a,q_b;
  dual_port_ram d0(.data_a(data_a),.data_b(data_b),.addr_a(addr_a),.addr_b(addr_b),.wr_a(wr_a),.wr_b(wr_b),.clk(clk),.q_a(q_a),.q_b(q_b));//instantiating the module.
initial 
begin
    $dumpfile("2port.vcd");
    $dumpvars(1,dual_port_ram_tb);

    clk=1'b1;//generation of clock.
    forever #1 clk=~clk;
end
initial
begin
  $display($time,"data_a=%d,data_b=%d,addr_a=%d,addr_b=%d,clk=%b,wr_a=%b,wr_b=%b,q_a=%d,q_b=%d",data_a,data_b,addr_a,addr_b,clk,wr_a,wr_b,q_a,q_b);//data to be displayed.
    data_a = 8'd45;
    addr_a = 6'd00;
    wr_a = 1'b1;
    data_b = 8'd18;
    addr_b = 6'd01;
    wr_b = 1'b1;
    #2;

    data_a = 8'd07;
    addr_a = 6'd03;
    addr_b = 6'd01;
    wr_b = 1'b0;
    #2;

    addr_a = 6'd02;
    wr_a = 1'b0;
    addr_b = 6'd03;
    #2;

    addr_a = 6'd00;
    data_b = 8'd17;
    addr_b = 6'd02;
    wr_b = 1'b1;
    #2;

    data_a = 8'd01;
    addr_a = 6'd31;
    wr_a = 1'b1;
    data_b = 8'd02;
    addr_b = 6'd32;
    wr_b = 1'b1;
    #2;

    data_a = 8'd07;
    addr_a = 6'd33;
    addr_b = 6'd32;
    wr_b = 1'b0;
    #2;

    addr_a = 6'd33;
    wr_a = 1'b0;
    addr_b = 6'd31;
    #2;

    addr_a = 6'd31;
    data_b = 8'd15;
    addr_b = 6'd33;
    wr_b = 1'b1;
    #2;

    data_a = 8'd33;
    addr_a = 6'd14;
    wr_a = 1'b1;
    data_b = 8'd21;
    addr_b = 6'd15;
    wr_b = 1'b1;
    #2;

    data_a = 8'd09;
    addr_a = 6'd16;
    addr_b = 6'd14;
    wr_b = 1'b0;
    #2;

    $finish;
end
endmodule
