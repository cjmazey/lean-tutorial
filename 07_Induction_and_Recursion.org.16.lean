import standard
open nat

definition f : nat → nat → nat
| f 0     y     := 1
| f x     0     := 2
| f (x+1) (y+1) := 3

-- BEGIN
variables (a b : nat)

example : f 0     0     = 1 := rfl
example : f 0     (a+1) = 1 := rfl
example : f (a+1) 0     = 2 := rfl
example : f (a+1) (b+1) = 3 := rfl
-- END
