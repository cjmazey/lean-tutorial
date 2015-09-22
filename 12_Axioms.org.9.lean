import standard
import data.prod
open prod prod.ops quot

private definition eqv {A : Type} (p₁ p₂ : A × A) : Prop :=
(p₁.1 = p₂.1 ∧ p₁.2 = p₂.2) ∨ (p₁.1 = p₂.2 ∧ p₁.2 = p₂.1)

infix `~` := eqv
