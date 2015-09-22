import standard
import data.nat
open nat

attribute nat [class]

definition one [instance] : ℕ := 1

definition foo [x : ℕ] : nat := x

check @foo
eval foo

example : foo = 1 := rfl
