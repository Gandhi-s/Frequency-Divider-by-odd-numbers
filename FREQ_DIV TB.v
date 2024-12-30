module freq_div_tb();
reg clk,rst;
wire out_clk;
freq_div dut(clk,rst,out_clk);
always
begin
#5 clk=~clk;
end
initial
begin
clk=0;
rst=1;
#10;
rst=0;
#500;
$stop;
end
initial
begin
$monitor("Time=%0d,out_clk=%b",$time,out_clk);
end
endmodule