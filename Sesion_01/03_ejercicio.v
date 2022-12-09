module main;

    reg [0:15] dBits;

initial
begin
    dBits = 16'h12AB;
    $display("dBits = %h", dBits);

    $display("\nInvertido:");
    $write("%0h", dBits[12:15]);
    $write("%0h", dBits[8:11]);
    $write("%0h", dBits[4:7]);
    $write("%0h", dBits[0:3]);

end

endmodule