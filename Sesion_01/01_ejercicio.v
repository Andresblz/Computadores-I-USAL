module main;

initial
begin
	$display("%h en decimal vale: %d", 'h01FEA, 'h01FEA);
	$display("%b en decimal vale: %d", 7'b1000101, 7'b1000101);
	$display("%d en octal vale: %o", 1234, 1234);
	$display("%b en hexadecimal vale: %h", 7'b1010011, 7'b1010011);
end

endmodule