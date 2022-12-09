module main;

    reg [15:0] dBits;

	reg [7:0] oBits;
	reg signed [15:0] dBitsSigned;

initial
begin
	dBits = 2323;
	$display("Registro con valor %d -> Binario: %b | Hexadecimal: %h", dBits, dBits, dBits);

	dBits = 16'b0000000000000000;
	$display("Numero mas pequeño registro 16 bits -> Decimal: %d | Binario: %b | Hexadecimal: %h", dBits, dBits, dBits);
	dBits = 16'b1111111111111111;
	$display("Numero mas grande registro 16 bits -> Decimal: %d | Binario: %b | Hexadecimal: %h", dBits, dBits, dBits);

	dBitsSigned = 6789;
	$display("Registro con valor %d -> Binario: %b", dBitsSigned, dBitsSigned);

	oBits = -22;
	dBitsSigned = oBits;
	$display("Valor -22 -> Registro 8 bits: %d | Registro 16 bits con signo: %d", oBits, dBitsSigned);
end

endmodule