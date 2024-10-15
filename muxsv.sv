module muxsv( 

  input logic [1:0]a,b,
  input logic sel,
  output logic [1:0]y
  );
  
mux1 m1 (
        .a(a[0]),
		  .b(b[0]),
		  .sel(sel),
		  .y(y[0])
		  );
mux1 m2 (
        .a(a[1]),
		  .b(b[1]),
		  .sel(sel),
		  .y(y[1])
		  );
endmodule 

module mux1(
input logic a,b,sel,
output logic y
);
wire logic w1,w2,p;
not ( p, sel);
and a1 ( w1,a,p);
and a2 ( w2,b,sel);
or ( y, w1,w2);
endmodule 


