import standard
import data.nat
open nat

definition f₁ (x : ℕ) := x
definition f₂ (x : ℕ) := 0 + x

theorem feq : f₁ = f₂ := funext (take x, eq.subst !zero_add rfl)
check eq.rec (0 : ℕ) feq    -- ℕ
eval eq.rec (0 : ℕ) feq     -- eq.rec 0 feq
