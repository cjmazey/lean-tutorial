import standard
import data.nat
open nat

attribute nat [class]

definition one [instance] : ℕ := 1

definition foo [x : ℕ] : nat := x

eval foo

example : foo = 1 := rfl

-- BEGIN
definition two [instance] : ℕ := 2

eval foo

example : foo ≠ 1 := dec_trivial
-- END
