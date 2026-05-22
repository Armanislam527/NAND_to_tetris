/** XOR gate: out=(a and not(b)) or (not(a) and b) */
CHIP Xor {
    IN a, b;
    OUT out;
    PARTS:
    Not (in=a, out=nota);
    Not (in=b, out=notb);
    And (a=a, b=notb, out=anotb);
    And (a=nota, b=b, out=nota_b);
    Or (a=anotb, b=nota_b, out=out);

}