import standard
open nat

variable C  : nat → Type
variable fz : C zero
variable fs : Π (n : nat), C n → C (succ n)

eval nat.rec fz fs zero
-- nat.rec_on is defined from nat.rec
eval nat.rec_on zero fz fs

example : nat.rec fz fs zero = fz :=
rfl

variable a : nat

eval nat.rec fz fs (succ a)
eval nat.rec_on (succ a) fz fs

example (a : nat) : nat.rec fz fs (succ a) = fs a (nat.rec fz fs a) :=
rfl
