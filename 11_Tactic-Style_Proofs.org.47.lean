import standard
import data.nat
open nat
-- BEGIN
example (a b c : nat) (H1 : a = b) (H2 : b = c + 1) : a ≠ 0 :=
calc
a     = succ c : by rewrite [H1, H2, add_one]
... ≠ 0      : succ_ne_zero c
-- END
