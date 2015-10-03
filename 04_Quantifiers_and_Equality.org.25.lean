/- page 57 -/

import standard
open classical

variables (A : Type) (p q : A → Prop)
variable r : Prop

example : (∃ x : A, r) → r :=
  λ H, exists.elim H (λ x Hr, Hr)

example (a : A) : r → (∃ x : A, r) :=
  λ Hr, exists.intro a Hr

example : (∃ x, p x ∧ r) ↔ (∃ x, p x) ∧ r :=
  iff.intro (assume H,
             obtain (w : A) (Hw : p w ∧ r), from H,
             and.intro (exists.intro w (and.left Hw))
                       (and.right Hw))
            (assume H,
             obtain (w : A) (Hw : p w), from and.left H,
             exists.intro w (and.intro Hw (and.right H)))

example : (∃ x, p x ∨ q x) ↔ (∃ x, p x) ∨ (∃ x, q x) := sorry

example : (∀ x, p x) ↔ ¬ (∃ x, ¬ p x) := sorry
example : (∃ x, p x) ↔ ¬ (∀ x, ¬ p x) := sorry
example : (¬ ∃ x, p x) ↔ (∀ x, ¬ p x) := sorry
example : (¬ ∀ x, p x) ↔ (∃ x, ¬ p x) := sorry

example : (∀ x, p x → r) ↔ (∃ x, p x) → r := sorry
example (a : A) : (∃ x, p x → r) ↔ (∀ x, p x) → r := sorry
example (a : A) : (∃ x, r → p x) ↔ (r → ∃ x, p x) := sorry
