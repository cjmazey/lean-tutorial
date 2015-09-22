import standard
variables (A : Type) (p q : A → Prop)
variable r : Prop

example : A → (∀ x : A, r) ↔ r := sorry
example : (∀ x, p x ∨ r) ↔ (∀ x, p x) ∨ r := sorry
example : (∀ x, r → p x) ↔ (r → ∀ x, p x) := sorry
