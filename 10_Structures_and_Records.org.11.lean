import standard
open nat

structure big :=
(field1 : nat) (field2 : nat)
(field3 : nat) (field4 : nat)
(field5 : nat) (field6 : nat)

definition b : big := big.mk 1 2 3 4 5 6

definition v3 : nat :=
match b with
{| big, field3 := v |} := v
end

example : v3 = 3 := rfl
