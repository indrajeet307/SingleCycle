module InstrMem(input clk,reset,
				[31:0]lw0, [31:0]lw1, [31:0]lw2, [31:0]lw3,
				[31:0]lw4, [31:0]lw5, [31:0]lw6, [31:0]lw7,
				[31:0]lw8, [31:0]lw9, [31:0]lw10,[31:0]lw11,
				[31:0]lw12,[31:0]lw13,[31:0]lw14,[31:0]lw15,
				[31:0]lw16,[31:0]lw17,[31:0]lw18,[31:0]lw19,
				[31:0]lw20,[31:0]lw21,[31:0]lw22,[31:0]lw23,
				[31:0]lw24,[31:0]lw25,[31:0]lw26,[31:0]lw27,					  
				[31:0]lw28,[31:0]lw29,[31:0]lw30,[31:0]lw31,
                [31:0]PcIn,output[31:0] InstrOut);
wire    [31:0]wo0, wo1, wo2, wo3;
wire    [31:0]wo4, wo5, wo6, wo7;
wire    [31:0]wo8, wo9, wo10,wo11;
wire    [31:0]wo12,wo13,wo14,wo15;
wire    [31:0]wo16,wo17,wo18,wo19;
wire    [31:0]wo20,wo21,wo22,wo23;
wire    [31:0]wo24,wo25,wo26,wo27;
wire    [31:0]wo28,wo29,wo30,wo31;  
InstrReg reg00(clk,reset,lw0,wo0);
InstrReg reg01(clk,reset,lw1,wo1);
InstrReg reg02(clk,reset,lw2,wo2);
InstrReg reg03(clk,reset,lw3,wo3);

InstrReg reg04(clk,reset,lw4,wo4);
InstrReg reg05(clk,reset,lw5,wo5);
InstrReg reg06(clk,reset,lw6,wo6);
InstrReg reg07(clk,reset,lw7,wo7);

InstrReg reg08(clk,reset,lw8,wo8);
InstrReg reg09(clk,reset,lw9,wo9);
InstrReg reg10(clk,reset,lw10,wo10);
InstrReg reg11(clk,reset,lw11,wo11);

InstrReg reg12(clk,reset,lw12,wo12);
InstrReg reg13(clk,reset,lw13,wo13);
InstrReg reg14(clk,reset,lw14,wo14);
InstrReg reg15(clk,reset,lw15,wo15);
                                
InstrReg reg16(clk,reset,lw16,wo16);
InstrReg reg17(clk,reset,lw17,wo17);
InstrReg reg18(clk,reset,lw18,wo18);
InstrReg reg19(clk,reset,lw19,wo19);
                                
InstrReg reg20(clk,reset,lw20,wo20);
InstrReg reg21(clk,reset,lw21,wo21);
InstrReg reg22(clk,reset,lw22,wo22);
InstrReg reg23(clk,reset,lw23,wo23);
                                
InstrReg reg24(clk,reset,lw24,wo24);
InstrReg reg25(clk,reset,lw25,wo25);
InstrReg reg26(clk,reset,lw26,wo26);
InstrReg reg27(clk,reset,lw27,wo27);

InstrReg reg28(clk,reset,lw28,wo28);
InstrReg reg29(clk,reset,lw29,wo29);
InstrReg reg30(clk,reset,lw30,wo30);
InstrReg reg31(clk,reset,lw31,wo31);
mux32to1 m0(wo0, wo1, wo2, wo3,
			wo4, wo5, wo6, wo7,
			wo8, wo9, wo10,wo11,
			wo12,wo13,wo14,wo15,
			wo16,wo17,wo18,wo19,
			wo20,wo21,wo22,wo23,
			wo24,wo25,wo26,wo27,					  
			wo28,wo29,wo30,wo31,					  
			PcIn[6:2],InstrOut);
endmodule
module DataMem(input clk,reset,memRead,memWrite,[31:0] addr,
                data,output[31:0] dataOut);
wire    [31:0]wo0, wo1, wo2, wo3;
wire    [31:0]wo4, wo5, wo6, wo7;
wire    [31:0]wo8, wo9, wo10,wo11;
wire    [31:0]wo12,wo13,wo14,wo15;
wire    [31:0]wo16,wo17,wo18,wo19;
wire    [31:0]wo20,wo21,wo22,wo23;
wire    [31:0]wo24,wo25,wo26,wo27;
wire    [31:0]wo28,wo29,wo30,wo31,demuxOut;
demux1to32 dm0(addr[4:0],demuxOut);
Reg reg00(clk,reset,(memWrite & demuxOut[0]),data,wo0);
Reg reg01(clk,reset,(memWrite & demuxOut[1]),data,wo1);
Reg reg02(clk,reset,(memWrite & demuxOut[2]),data,wo2);
Reg reg03(clk,reset,(memWrite & demuxOut[3]),data,wo3);
                                    
Reg reg04(clk,reset,(memWrite & demuxOut[4]),data,wo4);
Reg reg05(clk,reset,(memWrite & demuxOut[5]),data,wo5);
Reg reg06(clk,reset,(memWrite & demuxOut[6]),data,wo6);
Reg reg07(clk,reset,(memWrite & demuxOut[7]),data,wo7);
                     
Reg reg08(clk,reset,(memWrite & demuxOut[8]),data,wo8);
Reg reg09(clk,reset,(memWrite & demuxOut[9]),data,wo9);
Reg reg10(clk,reset,(memWrite & demuxOut[10]),data,wo10);
Reg reg11(clk,reset,(memWrite & demuxOut[11]),data,wo11);
                     
Reg reg12(clk,reset,(memWrite & demuxOut[12]),data,wo12);
Reg reg13(clk,reset,(memWrite & demuxOut[13]),data,wo13);
Reg reg14(clk,reset,(memWrite & demuxOut[14]),data,wo14);
Reg reg15(clk,reset,(memWrite & demuxOut[15]),data,wo15);
                     
Reg reg16(clk,reset,(memWrite & demuxOut[16]),data,wo16);
Reg reg17(clk,reset,(memWrite & demuxOut[17]),data,wo17);
Reg reg18(clk,reset,(memWrite & demuxOut[18]),data,wo18);
Reg reg19(clk,reset,(memWrite & demuxOut[19]),data,wo19);
                     
Reg reg20(clk,reset,(memWrite & demuxOut[20]),data,wo20);
Reg reg21(clk,reset,(memWrite & demuxOut[21]),data,wo21);
Reg reg22(clk,reset,(memWrite & demuxOut[22]),data,wo22);
Reg reg23(clk,reset,(memWrite & demuxOut[23]),data,wo23);
                                
Reg reg24(clk,reset,(memWrite & demuxOut[24]),data,wo24);
Reg reg25(clk,reset,(memWrite & demuxOut[25]),data,wo25);
Reg reg26(clk,reset,(memWrite & demuxOut[26]),data,wo26);
Reg reg27(clk,reset,(memWrite & demuxOut[27]),data,wo27);
                     
Reg reg28(clk,reset,(memWrite & demuxOut[28]),data,wo28);
Reg reg29(clk,reset,(memWrite & demuxOut[29]),data,wo29);
Reg reg30(clk,reset,(memWrite & demuxOut[30]),data,wo30);
Reg reg31(clk,reset,(memWrite & demuxOut[31]),data,wo31);
mux32to1 m0(wo0, wo1, wo2, wo3,
			wo4, wo5, wo6, wo7,
			wo8, wo9, wo10,wo11,
			wo12,wo13,wo14,wo15,
			wo16,wo17,wo18,wo19,
			wo20,wo21,wo22,wo23,
			wo24,wo25,wo26,wo27,					  
			wo28,wo29,wo30,wo31,					  
			addr[4:0],dataOut);
endmodule
module testbenchMemoryInstr();
  reg    [31:0]in0,in1,in2,in3;
  reg    [31:0]in4, in5, in6, in7;
  reg    [31:0]in8, in9, in10,in11;
  reg    [31:0]in12,in13,in14,in15;
  reg    [31:0]in16,in17,in18,in19;
  reg    [31:0]in20,in21,in22,in23;
  reg    [31:0]in24,in25,in26,in27;
  reg    [31:0]in28,in29,in30,in31;  
  reg    [4:0]sel;
  reg	clk,reset;
  wire   [31:0]out1;
  
  InstrMem irmem(clk,reset,
				in0, in1, in2, in3,
				in4, in5, in6, in7,
				in8, in9, in10,in11,
				in12,in13,in14,in15,
				in16,in17,in18,in19,
				in20,in21,in22,in23,
				in24,in25,in26,in27,					  
				in28,in29,in30,in31,
                {{27{1'b0}},sel},out1);
  always begin
	#5 clk=~clk;
  end
  initial begin
	reset=1'b1;clk=1'b0;
	in0=31'h0451_abcd; in1=31'h1451_abcf;in2=31'h0123_aefd;in3=31'h1456_edcf;
	in4=31'h0451_abcd; in5=31'h1451_abcf;in6=31'h0123_aefd;in7=31'h1456_edcf;
	in8=31'h0451_abcd; in9=31'h1451_abcf;in10=31'h0123_aefd;in11=31'h1456_edcf;
	in12=31'h0451_abcd;in13=31'h1451_abcf;in14=31'h0123_aefd;in15=31'h1456_edcf;
	in16=31'h0451_abcd;in17=31'h1451_abcf;in18=31'h0123_aefd;in19=31'h1456_edcf;
	in20=31'h0451_abcd;in21=31'h1451_abcf;in22=31'h0123_aefd;in23=31'h1456_edcf;
	in24=31'h0451_abcd;in25=31'h1451_abcf;in26=31'h0123_aefd;in27=31'h1456_edcf;
	in28=31'h0451_abcd;in29=31'h1451_abcf;in30=31'h0123_aefd;in31=31'h1456_edcf;
	#5 reset=1'b0;
	#5 sel=5'd0;	
	#5 sel=5'd5;	
	#5 sel=5'd10;	
	#5 sel=5'd15;
	#5 sel=5'd18;	
	#5 sel=5'd21;	
	#5 sel=5'd24;	
	#5 sel=5'd29;
  end
endmodule


module testbenchMemoryData();
  reg clk,reset,memWrite,memRead;
  reg [31:0]data,addr;
  wire   [31:0]out1;
DataMem dm0(clk,reset,memRead,memWrite,addr,data,out1);
  always begin
    #5 clk=~clk;
  end
  initial begin
    clk=1'b1;
    reset=1'b1;
    memWrite=1'b1;
    #5   addr=32'h0000_0000;
         data=32'h0120_0334;
		 reset=1'b0;
    #10   addr=32'h0000_0001;
         data=32'h0121_0334;
    #10   addr=32'h0000_0002;
         data=32'h0123_0334;
    #10   addr=32'h0000_0003;
         data=32'h0124_0334;
    #10   addr=32'h0000_0004;
         data=32'h0125_0334;
    #10   addr=32'h0000_0005;
         data=32'h0126_0334;
    #10   addr=32'h0000_0006;
         data=32'h0127_0334;
    #10   addr=32'h0000_0007;
         data=32'h0128_0334;
  end
endmodule