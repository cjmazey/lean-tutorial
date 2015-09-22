import standard
import data.finset
open finset quot list nat

definition s₁ : finset nat := to_finset [1, 2]
definition s₂ : finset nat := to_finset [2, 1]

theorem seq : s₁ = s₂ := dec_trivial
check eq.rec (0 : ℕ) seq
eval eq.rec (0 : ℕ) seq
