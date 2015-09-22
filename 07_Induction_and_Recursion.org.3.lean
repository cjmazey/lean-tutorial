import standard
open nat

definition sub2 : nat → nat
| sub2 0     := 0
| sub2 1     := 0
| sub2 (a+2) := a

-- BEGIN
print definition sub2
-- END
