/- page 49 -/

import standard
variables (A : Type) (p q : A → Prop)

example : (∀ x, p x ∧ q x) ↔ (∀ x, p x) ∧ (∀ x, q x) :=
  iff.intro (assume H : ∀ x, p x ∧ q x,
             and.intro (take x : A,
                        and.left (H x))
                       (take x : A,
                        and.right (H x)))
            (assume H : (∀ x, p x) ∧ (∀ x, q x),
             take x : A,
             and.intro (and.left H x)
                       (and.right H x))

example : (∀ x, p x → q x) → (∀ x, p x) → (∀ x, q x) :=
  assume H : ∀ x, p x → q x,
  assume H' : ∀ x, p x,
  take x : A,
  show q x, from H x (H' x)

example : (∀ x, p x) ∨ (∀ x, q x) → ∀ x, p x ∨ q x :=
  or.rec (λ H x, or.inl (H x))
         (λ H x, or.inr (H x))

/-
   In this last example, the reverse implication is not derivable,
   because it is not valid.  The hypothesis would be that, given any
   x, either p x or q x holds.  In particular, for any x, either p or
   q may not hold, as long as the other does.  But the conclusion
   would have either p x for all x, or q x for all x.  That is, either
   p x, always, or q x, always.
-/
