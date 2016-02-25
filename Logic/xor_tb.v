module xor_tb;
wire t_y;
wire t_a, t_b;

xor xor_tb_gate (.y(t_y), .a(t_a), .b(t_b));

initial
begin

$monitor($t_y, $t_a, $t_b);

t_a = 1'b0;
t_b = 1'b0;

#5
t_a = 1'b0;
t_b = 1'b1;

#5
t_a = 1'b1;
t_b = 1'b0;

#5
t_a = 1'b1;
t_b = 1'b1;

end
endmodule
