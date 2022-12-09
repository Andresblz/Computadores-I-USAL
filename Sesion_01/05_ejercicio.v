module main;

    reg [15:0] dBits;

initial
begin
    dBits = 'b00001111xxxxzzzz;
    $display("Registro en binario: %b", dBits);

    $display("Operaciones con registro\n");
    $display("\tSuma: %d\n", dBits+1);
    $display("\tResta: %d\n", dBits-1);
    $display("\tMultiplicacion: %d\n", dBits*1);
    $display("\tDivision: %d\n", dBits/1);
end

endmodule