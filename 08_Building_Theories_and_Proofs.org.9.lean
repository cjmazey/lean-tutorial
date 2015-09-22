import standard
import data.nat
open nat eq.ops
-- BEGIN
definition foo (n m k l : ℕ) : (n - m) * (k + l) = (k + l) * (n - m) := !mul.comm

print foo
-- definition foo : ∀ (n m k l : ℕ), (n - m) * (k + l) = (k + l) * (n - m)
-- λ (n m k l : ℕ), mul.comm (n - m) (k + l)

definition foo2 (n m k l : ℕ) : (n + k) + l = (k + l) + n := !add.assoc ⬝ !add.comm

print foo2
-- definition foo2 : ∀ (n : ℕ), ℕ → (∀ (k l : ℕ), n + k + l = k + l + n)
-- λ (n m k l : ℕ), add.assoc n k l ⬝ add.comm n (k + l)

definition foo3 (l : ℕ) (H : ∀ (n : ℕ), l + 2 ≠ 2 * (n + 1)) (n : ℕ) : l ≠ 2 * n :=
assume K : l = 2 * n,
absurd (show l + 2 = 2 * n + 2, from K ▸ rfl) !H

print foo3
-- definition foo3 : ∀ (l : ℕ),
--   (∀ (n : ℕ), l + 2 ≠ 2 * (n + 1)) → (∀ (n : ℕ), l ≠ 2 * n)
-- λ (l : ℕ) (H : ∀ (n : ℕ), l + 2 ≠ 2 * (n + 1)) (n : ℕ)
-- (K : l = 2 * n),
--   absurd (show l + 2 = 2 * n + 2, from K ▸ rfl) (H n)
-- END
