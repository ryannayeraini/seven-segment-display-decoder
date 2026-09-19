module tb;

    logic [3:0] D;
    logic [6:0] S;

    sevensegmentdisplaydecoders dut (
        .D(D),
        .S(S)
    );

    initial begin
        $monitor("D = %b, S = %b", D, S);
    end

    initial begin
        D = 4'b0000;
        #10 D = 4'b0001;
        #10 D = 4'b0010;
        #10 D = 4'b0011;
        #10 D = 4'b0100;
        #10 D = 4'b0101;
        #10 D = 4'b0110;
        #10 D = 4'b0111;
        #10 D = 4'b1000;
        #10 D = 4'b1001;
        #10 D = 4'b1010; // to check if it goes out of bound or not
        #10 $finish;
    end

endmodule