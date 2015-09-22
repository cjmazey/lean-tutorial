import standard
import data.nat.order
open nat
-- BEGIN
check @add_lt_add_right

definition foo (n m k : ℕ) (H : n < m) : n + k < m + k := !(add_lt_add_right H)

example {n m k l : ℕ} (H : n < m) (K : m + l < k + l) : n < k + l :=
calc
n ≤ n + l : !le_add_right
... < m + l : !foo H
... < k + l : K
-- END
