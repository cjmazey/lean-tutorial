import standard
open nat

-- BEGIN
definition f : nat → nat → nat
| f 0     y     := 1
| f x     0     := 2
| f (x+1) (y+1) := 3
-- END
