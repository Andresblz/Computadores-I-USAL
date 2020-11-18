/* 
 * Contador arbitrario con biestables JK
 * El contador sigue la serie: 4-5-14-3-6-12-11-13
 *
 * La solución incluye:
 *   4 biestables JK (24 puertas)
 *   8 puertas AND
 *   7 puertas OR
 *  -----------------------------
 *   39 puertas en TOTAL
 */

/* Módulo del Biestable JK */
module JKd(output reg Q, output wire NQ, input wire J, input wire K, input wire C);
  not(NQ,Q);

  initial
  begin
    Q=0;
  end    

  always @(posedge C)
    case ({J,K})
      2'b10: Q=1;
      2'b01: Q=0;
      2'b11: Q=~Q;
    endcase
endmodule

/* Circuito y cables auxiliares */
module contador (output wire[3:0] Q, input wire C);
  //Salidas negadas biestables.
  wire [3:0] nQ;

  //Cables de entrada a los biestables.
  wire wJ0, wK0, wJ1, wK1, wK2, wJ3, wK3;

  //Cables intermedios.
  wire wn1q2, wq1q3, wq0n3, wn0q3, wn0n3, wn2q3, wq2q0, wq2q1;


  //Puertas biestables
  /* Biestable JK3 */ 
  and q2q0 (wq2q0, Q[2], Q[0]); /* J3 = K3 */
  and q2q1 (wq2q1, Q[2], Q[1]); /* J3 = K3 */
  or J3 (wJ3, wq2q0, wq2q1);

  or K3 (wK3, wq2q0, wq2q1);

  /* Biestable JK2 */
  // J2 = 1. 
  and q1q3 (wq1q3, Q[1], Q[3]); /* K2 = J1 */
  and n0q3 (wn0q3, nQ[0], Q[3]);
  or K2 (wK2, wq1q3, wn0q3);

  /* Biestable JK1 */
  and q0n3 (wq0n3, Q[0], nQ[3]);
  or J1 (wJ1, wn0q3, wq0n3);

  and n0n3 (wn0n3, nQ[0], nQ[3]);
  and n2q3 (wn2q3, nQ[2], Q[3]);
  or K1 (wK1, wn0n3, wn2q3);

  /* Biestable JK0 */
  and n1q2 (wn1q2, nQ[1], Q[2]);
  or J0 (wJ0, wn1q2, wq1q3);

  or n1n3 (wK0, nQ[1], nQ[3]);

  /* Biestables JK */
  JKd jk0 (Q[0], nQ[0], wJ0, wK0, C);
  JKd jk1 (Q[1], nQ[1], wJ1, wK1, C);
  JKd jk2 (Q[2], nQ[2], 1'b1, wK2, C);
  JKd jk3 (Q[3], nQ[3], wJ3, wK3, C);

endmodule

/* Módulo de prueba */
module test;
  reg I, C;
  wire [3:0] Q;
  contador cont (Q,C);

  always 
  begin
    #5 C=~C;
  end

  initial
  begin
    $dumpfile("Ejercicio_JK.dmp");
    $dumpvars(2, cont, Q);
          
    C=0;
    #200 $finish;
  end
endmodule