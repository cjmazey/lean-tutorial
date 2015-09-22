import standard
import data.nat
open nat

theorem T2 (a b c : nat) (H1 : a = b) (H2 : b = c + 1) : a ≠ 0 :=
calc
a     = b      : H1
... = c + 1  : H2
... = succ c : add_one c
... ≠ 0      : succ_ne_zero c
