import standard
open nat
definition f : nat → nat → nat
| f 0  _  := 1
| f _  0  := 2
| f _  _  := 3
variables (a b : nat)
example : f 0     0     = 1 := rfl
example : f 0     (a+1) = 1 := rfl
example : f (a+1) 0     = 2 := rfl
example : f (a+1) (b+1) = 3 := rfl
