module muxsv_tb;
 logic [1:0]a,b;
  logic sel;
 logic [1:0] y ;
 
 muxsv dut (
    .a(a),
	 .b(b),
	 .sel(sel),
	 .y(y)
	 );
	 
initial 
begin

$monitor( " a = %b, b= %b , sel = %b , y =%b ", a ,b,sel,y);
a=2'b11; b=2'b00; sel=1'b0;
#10 a=2'b11; b=2'b00; sel=1'b1;
#10 a=2'bxz; b=2'b00; sel=1'b0;
#10 a=2'bxz; b=2'bzz; sel=1'b1;
#10 $finish;

end 
endmodule 