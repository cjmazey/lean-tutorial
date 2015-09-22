import standard
import data.nat
open nat

example (x y : ℕ) (H : succ x = succ y) : x = y :=
by injection H with H'; exact H'

example (x y : ℕ) (H : succ x = succ y) : x = y :=
by injection H; assumption
