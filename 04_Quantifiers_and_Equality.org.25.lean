import standard
open classical

variables (A : Type) (p q : A → Prop)
variable r : Prop

example : (∃ x : A, r) → r := sorry
example (a : A) : r → (∃ x : A, r) := sorry
example : (∃ x, p x ∧ r) ↔ (∃ x, p x) ∧ r := sorry
example : (∃ x, p x ∨ q x) ↔ (∃ x, p x) ∨ (∃ x, q x) := sorry

example : (∀ x, p x) ↔ ¬ (∃ x, ¬ p x) := sorry
example : (∃ x, p x) ↔ ¬ (∀ x, ¬ p x) := sorry
example : (¬ ∃ x, p x) ↔ (∀ x, ¬ p x) := sorry
example : (¬ ∀ x, p x) ↔ (∃ x, ¬ p x) := sorry

example : (∀ x, p x → r) ↔ (∃ x, p x) → r := sorry
example (a : A) : (∃ x, p x → r) ↔ (∀ x, p x) → r := sorry
example (a : A) : (∃ x, r → p x) ↔ (r → ∃ x, p x) := sorry
