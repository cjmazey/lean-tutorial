/- page 57 -/

import standard
open classical

variables (A : Type) (p q : A → Prop)
variable r : Prop

-- constructive
example : (∃ x : A, r) → r :=
  λ H, exists.elim H (λ x Hr, Hr)

-- constructive
example (a : A) : r → (∃ x : A, r) :=
  λ Hr, exists.intro a Hr

-- constructive
example : (∃ x, p x ∧ r) ↔ (∃ x, p x) ∧ r :=
  iff.intro (assume H,
             obtain (w : A) (Hw : p w ∧ r), from H,
             and.intro (exists.intro w (and.left Hw))
                       (and.right Hw))
            (assume H,
             obtain (w : A) (Hw : p w), from and.left H,
             exists.intro w (and.intro Hw (and.right H)))

-- constructive
example : (∃ x, p x ∨ q x) ↔ (∃ x, p x) ∨ (∃ x, q x) :=
  iff.intro (assume H,
             obtain (w : A) (Hw : p w ∨ q w), from H,
             or.elim Hw (λ Hp, or.inl (exists.intro w Hp))
                        (λ Hq, or.inr (exists.intro w Hq)))
            (assume H,
             or.elim H (assume Hp : Exists p,
                        obtain w Hw, from Hp,
                        exists.intro w (or.inl Hw))
                       (assume Hq : Exists q,
                        obtain w Hw, from Hq,
                        exists.intro w (or.inr Hw)))


example : (∀ x, p x) ↔ ¬ (∃ x, ¬ p x) := sorry
example : (∃ x, p x) ↔ ¬ (∀ x, ¬ p x) := sorry
example : (¬ ∃ x, p x) ↔ (∀ x, ¬ p x) := sorry
example : (¬ ∀ x, p x) ↔ (∃ x, ¬ p x) := sorry


example : (∀ x, p x → r) ↔ (∃ x, p x) → r := sorry
example (a : A) : (∃ x, p x → r) ↔ (∀ x, p x) → r := sorry
example (a : A) : (∃ x, r → p x) ↔ (r → ∃ x, p x) := sorry
