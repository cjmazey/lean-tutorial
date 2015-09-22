import standard
import data.nat
open nat

definition is_even (a : nat) := ∃ b, a = 2*b

-- BEGIN
theorem even_plus_even {a b : nat} (H1 : is_even a) (H2 : is_even b) :
is_even (a + b) :=
obtain (w1 : nat) (Hw1 : a = 2*w1), from H1,
obtain (w2 : nat) (Hw2 : b = 2*w2), from H2,
exists.intro (w1 + w2)
(calc
a + b = 2*w1 + b      : Hw1
... = 2*w1 + 2*w2   : Hw2
... = 2*(w1 + w2)   : mul.left_distrib)
-- END
