module SegDisplay(in, seg);

	input [3:0] in;
	output [6:0] seg;

	// in[3] = a
	// in[2] = b
	// in[1] = c
	// in[0] = d

	assign seg[0] = ((~in[3])&(~in[2])&(~in[1])&(in[0])) | ((~in[3])&(in[2])&(~in[1])&(~in[0])) | ((in[3])&(in[2])&(~in[1])&(in[0])) | ((in[3])&(~in[2])&(in[1])&(in[0]));
	assign seg[1] = ((in[3])&(in[2])&(~in[1])&(~in[0])) | ((~in[3])&(in[2])&(~in[1])&(in[0])) | ((in[2])&(in[1])&(~in[0]))| ((in[3])&(in[1])&(in[0]));
	//reduction:
	// f = ~a~bc~d + ab~c~d + abc
	//   = ~a~bc~d + ab(~c~d + c)
	//   = ~a~bc~d + ab(~d + c) --> absorbtion
	// f = ~a~bc~d + ab~d + abc
	assign seg[2] = ((~in[3])&(~in[2])&(in[1])&(~in[0])) | ((in[3])&(in[2])&(~in[0])) | ((in[3])&(in[2])&(in[1]));
	assign seg[3] = ((~in[3])&(~in[2])&(~in[1])&(in[0])) | ((~in[3])&(in[2])&(~in[1])&(~in[0])) | ((in[2])&(in[1])&(in[0])) | ((in[3])&(~in[2])&(in[1])&(~in[0]));
	assign seg[4] = ((~in[3])&(in[2])&(~in[1])&(~in[0])) | ((~in[3])&(in[0])) | ((in[3])&(~in[2])&(~in[1])&(in[0]));
	assign seg[5] = ((in[3])&(in[2])&(~in[1])&(in[0])) | ((~in[3])&(~in[2])&(in[0])) | ((~in[3])&(~in[2])&(in[1])) | ((~in[3])&(in[1])&(in[0]));
	assign seg[6] = ((~in[3])&(~in[2])&(~in[1])) | ((in[3])&(in[2])&(~in[1])&(~in[0])) | ((~in[3])&(in[2])&(in[1])&(in[0]));
	
endmodule 
