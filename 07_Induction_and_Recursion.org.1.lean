import standard
open nat

definition sub2 : nat → nat
| sub2 0     := 0
| sub2 1     := 0
| sub2 (a+2) := a

example : sub2 5 = 3 := rfl
