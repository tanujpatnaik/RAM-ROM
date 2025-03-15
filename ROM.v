module rom(data,addr,en,clk);
input clk;
input en;
input [4:0] addr;
output reg [7:0] data;
reg [7:0] mem [32:0];
always@(posedge clk)//working of ROM.
begin
    if(en)
    data <= mem[addr];
    else
    data <=8'bxxxxxxxx;
end
initial
begin//decleration of data.
    mem[0]=8'd04;
    mem[1]=8'd03;
    mem[2]=8'd09;
    mem[3]=8'd10;
    mem[4]=8'd11;
    mem[5]=8'd12;
    mem[6]=8'd19;
    mem[7]=8'd01;
    mem[8]=8'd33;
    mem[9]=8'd05;
    mem[10]=8'd45;
    mem[11]=8'd18;
    mem[12]=8'd07;
    mem[13]=8'd17;
    mem[14]=8'd08;
    mem[15]=8'd12;
    mem[16]=8'd31;
    mem[17]=8'd32;
    mem[18]=8'd33;
    mem[19]=8'd34;
    mem[20]=8'd35;
    mem[21]=8'd36;
    mem[22]=8'd37;
    mem[23]=8'd38;
    mem[24]=8'd39;
    mem[25]=8'd40;
    mem[26]=8'd41;
    mem[27]=8'd24;
    mem[28]=8'd42;
    mem[29]=8'd43;
    mem[30]=8'd44;
    mem[31]=8'd46;
end
endmodule
