/- page 50 -/

import standard
variables (A : Type) (p q : A → Prop)
variable r : Prop

/-
example : A → (∀ x : A, r) ↔ r :=
  iff.intro (λ H, _)
            (λ Hr Ha Ha, Hr)
-/

example : A → ((∀ x : A, r) ↔ r) :=
  λ Ha, iff.intro (λ H, H Ha)
                  (λ Hr Ha, Hr)

example : (∀ x, p x ∨ r) ↔ (∀ x, p x) ∨ r :=
  iff.intro (λ H, or.elim (classical.em r)
                          (λ Hr, or.inr Hr)
                          (λ Hnr, or.inl (λ Ha, or.elim (H Ha)
                                                        (λ HpHa, HpHa)
                                                        (λ Hr, absurd Hr Hnr))))
            (λ H Ha, or.elim H (λ H', or.inl (H' Ha))
                               (λ Hr, or.inr Hr))

example : (∀ x, r → p x) ↔ (r → ∀ x, p x) :=
  iff.intro (λ H Hr Ha, H Ha Hr)
            (λ H Ha Hr, H Hr Ha)
