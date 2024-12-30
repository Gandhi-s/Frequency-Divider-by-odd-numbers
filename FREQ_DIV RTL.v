module freq_div(clk,rst,out_clk);
input clk,rst;
output reg out_clk;
parameter n=3;
reg [n-1:0]count;
always @ (posedge clk or posedge rst)
begin
if(rst)
begin
count <= 3'b000;
out_clk <= 0;
end
else
begin
if(count==3'b110)
begin
count <= 3'b000;
out_clk =~out_clk;
end
else
begin
count <= count+1;
end
end
end
endmodule