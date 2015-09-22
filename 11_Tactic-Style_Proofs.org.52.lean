import standard
import algebra.ring
open algebra

example {A : Type} [s : comm_ring A] (a b c : A) : a * 0 + 0 * b + c * 0 + 0 * a = 0 :=
begin
rewrite [+mul_zero, +zero_mul, +add_zero]
end
