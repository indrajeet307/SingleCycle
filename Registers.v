module PCReg(input clk,reset,load,[31:0] PCIn,output[31:0] PCOut);
DFF_Regular dff00(clk,reset,load,PCIn[0],PCOut[0]);
DFF_Regular dff01(clk,reset,load,PCIn[1],PCOut[1]);
DFF_Regular dff02(clk,reset,load,PCIn[2],PCOut[2]);
DFF_Regular dff03(clk,reset,load,PCIn[3],PCOut[3]);
                                         
DFF_Regular dff04(clk,reset,load,PCIn[4],PCOut[4]);
DFF_Regular dff05(clk,reset,load,PCIn[5],PCOut[5]);
DFF_Regular dff06(clk,reset,load,PCIn[6],PCOut[6]);
DFF_Regular dff07(clk,reset,load,PCIn[7],PCOut[7]);
                               
DFF_Regular dff08(clk,reset,load,PCIn[8],PCOut[8]);
DFF_Regular dff09(clk,reset,load,PCIn[9],PCOut[9]);
DFF_Regular dff10(clk,reset,load,PCIn[10],PCOut[10]);
DFF_Regular dff11(clk,reset,load,PCIn[11],PCOut[11]);
                               
DFF_Regular dff12(clk,reset,load,PCIn[12],PCOut[12]);
DFF_Regular dff13(clk,reset,load,PCIn[13],PCOut[13]);
DFF_Regular dff14(clk,reset,load,PCIn[14],PCOut[14]);
DFF_Regular dff15(clk,reset,load,PCIn[15],PCOut[15]);
                               
DFF_Regular dff16(clk,reset,load,PCIn[16],PCOut[16]);
DFF_Regular dff17(clk,reset,load,PCIn[17],PCOut[17]);
DFF_Regular dff18(clk,reset,load,PCIn[18],PCOut[18]);
DFF_Regular dff19(clk,reset,load,PCIn[19],PCOut[19]);
                               
DFF_Regular dff20(clk,reset,load,PCIn[20],PCOut[20]);
DFF_Regular dff21(clk,reset,load,PCIn[21],PCOut[21]);
DFF_Regular dff22(clk,reset,load,PCIn[22],PCOut[22]);
DFF_Regular dff23(clk,reset,load,PCIn[23],PCOut[23]);
                               
DFF_Regular dff24(clk,reset,load,PCIn[24],PCOut[24]);
DFF_Regular dff25(clk,reset,load,PCIn[25],PCOut[25]);
DFF_Regular dff26(clk,reset,load,PCIn[26],PCOut[26]);
DFF_Regular dff27(clk,reset,load,PCIn[27],PCOut[27]);
                                
DFF_Regular dff28(clk,reset,load,PCIn[28],PCOut[28]);
DFF_Regular dff29(clk,reset,load,PCIn[29],PCOut[29]);
DFF_Regular dff30(clk,reset,load,PCIn[30],PCOut[30]);
DFF_Regular dff31(clk,reset,load,PCIn[31],PCOut[31]);
endmodule

module Reg(input clk,reset,load,[31:0] RegIn,output[31:0] RegOut);
DFF_Regular dff00(clk,reset,load,RegIn[0],RegOut[0]);
DFF_Regular dff01(clk,reset,load,RegIn[1],RegOut[1]);
DFF_Regular dff02(clk,reset,load,RegIn[2],RegOut[2]);
DFF_Regular dff03(clk,reset,load,RegIn[3],RegOut[3]);
                               
DFF_Regular dff04(clk,reset,load,RegIn[4],RegOut[4]);
DFF_Regular dff05(clk,reset,load,RegIn[5],RegOut[5]);
DFF_Regular dff06(clk,reset,load,RegIn[6],RegOut[6]);
DFF_Regular dff07(clk,reset,load,RegIn[7],RegOut[7]);
                               
DFF_Regular dff08(clk,reset,load,RegIn[8],RegOut[8]);
DFF_Regular dff09(clk,reset,load,RegIn[9],RegOut[9]);
DFF_Regular dff10(clk,reset,load,RegIn[10],RegOut[10]);
DFF_Regular dff11(clk,reset,load,RegIn[11],RegOut[11]);
                               
DFF_Regular dff12(clk,reset,load,RegIn[12],RegOut[12]);
DFF_Regular dff13(clk,reset,load,RegIn[13],RegOut[13]);
DFF_Regular dff14(clk,reset,load,RegIn[14],RegOut[14]);
DFF_Regular dff15(clk,reset,load,RegIn[15],RegOut[15]);
                               
DFF_Regular dff16(clk,reset,load,RegIn[16],RegOut[16]);
DFF_Regular dff17(clk,reset,load,RegIn[17],RegOut[17]);
DFF_Regular dff18(clk,reset,load,RegIn[18],RegOut[18]);
DFF_Regular dff19(clk,reset,load,RegIn[19],RegOut[19]);
                               
DFF_Regular dff20(clk,reset,load,RegIn[20],RegOut[20]);
DFF_Regular dff21(clk,reset,load,RegIn[21],RegOut[21]);
DFF_Regular dff22(clk,reset,load,RegIn[22],RegOut[22]);
DFF_Regular dff23(clk,reset,load,RegIn[23],RegOut[23]);
                               
DFF_Regular dff24(clk,reset,load,RegIn[24],RegOut[24]);
DFF_Regular dff25(clk,reset,load,RegIn[25],RegOut[25]);
DFF_Regular dff26(clk,reset,load,RegIn[26],RegOut[26]);
DFF_Regular dff27(clk,reset,load,RegIn[27],RegOut[27]);
                               
DFF_Regular dff28(clk,reset,load,RegIn[28],RegOut[28]);
DFF_Regular dff29(clk,reset,load,RegIn[29],RegOut[29]);
DFF_Regular dff30(clk,reset,load,RegIn[30],RegOut[30]);
DFF_Regular dff31(clk,reset,load,RegIn[31],RegOut[31]);
endmodule

module InstrReg(input clk,reset,[31:0] RegIn,output[31:0] RegOut);
DFF_instr dff00(clk,reset,RegIn[0],RegOut[0]);
DFF_instr dff01(clk,reset,RegIn[1],RegOut[1]);
DFF_instr dff02(clk,reset,RegIn[2],RegOut[2]);
DFF_instr dff03(clk,reset,RegIn[3],RegOut[3]);
      
DFF_instr dff04(clk,reset,RegIn[4],RegOut[4]);
DFF_instr dff05(clk,reset,RegIn[5],RegOut[5]);
DFF_instr dff06(clk,reset,RegIn[6],RegOut[6]);
DFF_instr dff07(clk,reset,RegIn[7],RegOut[7]);

DFF_instr dff08(clk,reset,RegIn[8],RegOut[8]);
DFF_instr dff09(clk,reset,RegIn[9],RegOut[9]);
DFF_instr dff10(clk,reset,RegIn[10],RegOut[10]);
DFF_instr dff11(clk,reset,RegIn[11],RegOut[11]);

DFF_instr dff12(clk,reset,RegIn[12],RegOut[12]);
DFF_instr dff13(clk,reset,RegIn[13],RegOut[13]);
DFF_instr dff14(clk,reset,RegIn[14],RegOut[14]);
DFF_instr dff15(clk,reset,RegIn[15],RegOut[15]);

DFF_instr dff16(clk,reset,RegIn[16],RegOut[16]);
DFF_instr dff17(clk,reset,RegIn[17],RegOut[17]);
DFF_instr dff18(clk,reset,RegIn[18],RegOut[18]);
DFF_instr dff19(clk,reset,RegIn[19],RegOut[19]);

DFF_instr dff20(clk,reset,RegIn[20],RegOut[20]);
DFF_instr dff21(clk,reset,RegIn[21],RegOut[21]);
DFF_instr dff22(clk,reset,RegIn[22],RegOut[22]);
DFF_instr dff23(clk,reset,RegIn[23],RegOut[23]);

DFF_instr dff24(clk,reset,RegIn[24],RegOut[24]);
DFF_instr dff25(clk,reset,RegIn[25],RegOut[25]);
DFF_instr dff26(clk,reset,RegIn[26],RegOut[26]);
DFF_instr dff27(clk,reset,RegIn[27],RegOut[27]);

DFF_instr dff28(clk,reset,RegIn[28],RegOut[28]);
DFF_instr dff29(clk,reset,RegIn[29],RegOut[29]);
DFF_instr dff30(clk,reset,RegIn[30],RegOut[30]);
DFF_instr dff31(clk,reset,RegIn[31],RegOut[31]);
endmodule
