module DFF_Regular(input clk,reset,load,data,output reg q);
always@(negedge clk)
begin
	if (reset)
	q=0;
	else
		if(load)
			q=data;
end
endmodule
module DFF_instr(input clk,reset,data,output reg q);
  always@(negedge clk)
	if (reset)
	q=data;
endmodule
