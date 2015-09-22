import standard
import data.nat
open nat

example : ∃ x, x > 2 :=
by existsi 3; exact dec_trivial

example (B : ℕ → Type) (b : B 2) : Σ x : ℕ, B x :=
by existsi 2; assumption
