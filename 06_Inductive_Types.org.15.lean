import standard
import data.bool data.prod data.nat data.prod data.sum
open prod sum nat bool

-- BEGIN
definition sum_example (s : ℕ + ℕ) : ℕ :=
sum.cases_on s (λ n, 2 * n) (λ n, 2 * n + 1)

eval sum_example (inl 3)
eval sum_example (inr 3)
-- END
