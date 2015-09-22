import standard
import standard

open nat

definition step (a b x : ℕ) : ℕ :=
if x < a ∨ x > b then 0 else 1

set_option pp.implicit true
print definition step
