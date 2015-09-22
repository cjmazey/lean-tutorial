import standard
import data.nat
open nat

private definition inc (x : nat) := x + 1
private theorem inc_eq_succ (x : nat) : succ x = inc x :=
rfl
