module main;
    
    reg signed [0:15] pos;
    reg signed [0:15] neg;

initial
begin
    pos = 56;
    neg = -24;

    $display("pos = %b | %d", pos, pos);

    pos = (pos<<1);
    $display("Desplazamiento logico izquierda:\t %b | %d", pos, pos);
    pos = (pos>>1);

    pos = (pos>>1);
    $display("Desplazamiento logico derecha:\t\t %b | %d", pos, pos);
    pos = (pos<<1);

    pos = (pos <<< 1);
    $display("Desplazamiento aritmetico izquierda:\t %b | %d", pos, pos);
    pos = (pos >>> 1);

    pos = (pos >>> 1);
    $display("Desplazamiento aritmetico derecha:\t %b | %d", pos, pos);
    pos = (pos <<< 1);

    $display("\npos final = %b | %d\n\n", pos, pos);

    $display("neg = %b | %d", neg, neg);

    neg = (neg<<1);
    $display("Desplazamiento logico izquierda:\t %b | %d", neg, neg);
    neg = (neg>>1);

    neg = (neg>>1);
    $display("Desplazamiento logico derecha:\t\t %b | %d", neg, neg);
    neg = (neg<<1);

    neg = (neg <<< 1);
    $display("Desplazamiento aritmetico izquierda:\t %b | %d", neg, neg);
    neg = (neg >>> 1);

    neg = (neg >>> 1);
    $display("Desplazamiento aritmetico derecha:\t %b | %d", neg, neg);
    neg = (neg <<< 1);

    $display("\nneg final = %b | %d\n\n", neg, neg);
end

endmodule