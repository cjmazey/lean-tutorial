/- page 100 -/

import standard
open nat

definition sub2 : nat → nat
| sub2 0     := 0
| sub2 1     := 0
| sub2 (a+2) := a

-- BEGIN
example : sub2 0 = 0 := rfl

example : sub2 1 = 0 := rfl

example (a : nat) : sub2 (a + 2) = a := rfl
-- END
