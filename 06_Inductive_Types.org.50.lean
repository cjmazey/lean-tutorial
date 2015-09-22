import standard
open nat

print definition nat.rec_on

definition rec_on {C : nat → Type} (n : nat)
(fz : C zero) (fs : Π a, C a → C (succ a)) : C n :=
nat.rec fz fs n
