module sevensegmentdisplaydecoders ( input wire [3:0] D, output wire [6:0] S);
assign S[6] = ~D[3]&D[1] | ~D[3] & D[2]& D[0]| D[3]&~D[2]&~D[1] | ~D[2]&~D[1]&~D[0];
assign S[5] = ~D[3]&~D[2] | ~D[2]&~D[1] | ~D[3]&D[1]&D[0] | ~D[3]&~D[1]&~D[0];
assign S[4] = ~D[3]&~D[1] | ~D[2]&~D[1] | D[2]&~D[3] | ~D[3]&D[1]&D[0];
assign S[3] = ~D[2]&~D[1]&~D[0]|~D[3]&D[2]&D[0]&~D[1]|~D[3]&~D[2]&D[1]|~D[3]&D[1]&~D[0];
assign S[2] = ~D[1]&~D[2]&~D[0] | D[1]&~D[0]&~D[3];
assign S[1] = ~D[0]&~D[3]&D[2] | ~D[0]&~D[1]&~D[3] | ~D[3]&D[2]&~D[1] | D[3]&~D[2]&~D[1];
assign S[0] = ~D[3]&~D[2]&D[1] | D[1]&~D[0]&~D[3]|~D[3]&D[2]&~D[1]|D[3]&~D[2]&~D[1];
endmodule 

