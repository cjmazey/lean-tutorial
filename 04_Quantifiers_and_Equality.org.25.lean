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


-- nonconstructive (←)
example : (∀ x, p x) ↔ ¬ (∃ x, ¬ p x) :=
  iff.intro (assume H H',
             obtain (w : A) (Hnw : ¬ p w), from H',
             absurd (H w) Hnw)
            (assume H,
             take x : A,
             by_contradiction (assume Hnx : ¬ p x,
                               absurd (exists.intro x Hnx) H))

-- nonconstructive
example : (∃ x, p x) ↔ ¬ (∀ x, ¬ p x) :=
   iff.intro
      (assume H : ∃ x, p x,
       assume H' : ∀ x, ¬ p x,
       obtain (w : A) (Hpw : p w), from H,
       have Hnpw : ¬ p w, from H' w, absurd Hpw Hnpw)
      (assume H : ¬ (∀ x, ¬ p x),
       by_contradiction
          (assume H1 : ¬ Exists p,
           have H2 : ∀ x, ¬ p x,
           from
              take x,
              assume H3 : p x,
              have H4 : ∃ x, p x, from exists.intro x H3,
              show false, from H1 H4,
           show false, from H H2))

example : (¬ ∃ x, p x) ↔ (∀ x, ¬ p x) :=
   iff.intro
      (assume H : ¬ ∃ x, p x,
       take x : A,
       assume Hpx : p x,
       have H' : ∃ x, p x, from exists.intro x Hpx,
       absurd H' H)
      (assume H : ∀ x, ¬ p x,
       assume H' : ∃ x, p x,
       obtain (w : A) (Pw : p w), from H',
       absurd Pw (H w))

-- nonconstructive (→)
example : (¬ ∀ x, p x) ↔ (∃ x, ¬ p x) :=
   iff.intro
      (assume H₁ : ¬ ∀ x, p x,
       by_contradiction
          (assume H₂ : ¬ ∃ x, ¬ p x,
           have H₃ : ∀ x, p x,
           from
              take x : A,
              or.elim (em (p x)) (λ Hpx, Hpx)
                                 (λ Hnpx, absurd (exists.intro x Hnpx) H₂),
           absurd H₃ H₁))
      (assume H₁ : ∃ x, ¬ p x,
       assume H₂ : ∀ x, p x,
       obtain (w : A) (Hnpw : ¬ p w), from H₁,
       absurd (H₂ w) Hnpw)


example : (∀ x, p x → r) ↔ (∃ x, p x) → r := sorry
example (a : A) : (∃ x, p x → r) ↔ (∀ x, p x) → r := sorry
example (a : A) : (∃ x, r → p x) ↔ (r → ∃ x, p x) := sorry
