/- page 44 -/

import standard
open classical

variables p q r s : Prop

-- commutativity of ∧ and ∨
example : p ∧ q ↔ q ∧ p :=
  let swap := λ (p q : Prop),
                and.rec (λ (Hp : p) (Hq : q), and.intro Hq Hp)
  in iff.intro (swap p q) (swap q p)

example : p ∨ q ↔ q ∨ p :=
  let swap := λ (p q : Prop),
                or.rec (λ Hp : p, or.inr Hp) (λ Hq : q, or.inl Hq)
  in iff.intro (swap p q) (swap q p)

-- associativity of ∧ and ∨
example : (p ∧ q) ∧ r ↔ p ∧ (q ∧ r) :=
  iff.intro (assume Hpqr,
             have Hpq : p ∧ q, from and.left Hpqr,
             have Hp : p, from and.left Hpq,
             have Hq : q, from and.right Hpq,
             have Hr : r, from and.right Hpqr,
             and.intro Hp (and.intro Hq Hr))
            (assume Hpqr,
             have Hqr : q ∧ r, from and.right Hpqr,
             have Hp : p, from and.left Hpqr,
             have Hq : q, from and.left Hqr,
             have Hr : r, from and.right Hqr,
             and.intro (and.intro Hp Hq) Hr)

example : (p ∨ q) ∨ r ↔ p ∨ (q ∨ r) :=
  iff.intro (assume Hpqr,
             or.elim Hpqr (assume Hpq,
                           or.elim Hpq (assume Hp, or.inl Hp)
                                       (assume Hq, or.inr (or.inl Hq)))
                          (assume Hr, or.inr (or.inr Hr)))
            (assume Hpqr,
             or.elim Hpqr (assume Hp, or.inl (or.inl Hp))
                          (assume Hqr,
                           or.elim Hqr (assume Hq, or.inl (or.inr Hq))
                                       (assume Hr, or.inr Hr)))

-- distributivity
example : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
  iff.intro (assume H,
             have Hp : p, from and.left H,
             or.elim (and.right H)
                     (assume Hq,
                      or.inl (and.intro Hp Hq))
                     (assume Hr,
                      or.inr (and.intro Hp Hr)))
            (assume H,
             or.elim H
                     (assume Hpq,
                      and.intro (and.left Hpq) (or.inl (and.right Hpq)))
                     (assume Hpr,
                      and.intro (and.left Hpr) (or.inr (and.right Hpr))))

example : p ∨ (q ∧ r) ↔ (p ∨ q) ∧ (p ∨ r) :=
  iff.intro (or.rec (λ Hp, and.intro (or.inl Hp) (or.inl Hp))
                    (λ Hqr, and.intro (or.inr (and.left Hqr))
                                      (or.inr (and.right Hqr))))
            (and.rec (λ Hpq Hpr,
                      or.elim Hpq
                              (λ Hp, or.inl Hp)
                              (λ Hq, or.elim Hpr
                                             (λ Hp, or.inl Hp)
                                             (λ Hr, or.inr (and.intro Hq Hr)))))

-- other properties
example : (p → (q → r)) ↔ (p ∧ q → r) :=
  iff.intro (assume H,
             assume Hpq,
             H (and.left Hpq) (and.right Hpq))
            (assume H,
             assume Hp,
             assume Hq,
             H (and.intro Hp Hq))

example : ((p ∨ q) → r) ↔ (p → r) ∧ (q → r) :=
  iff.intro (λ H, and.intro (λ Hp, H (or.inl Hp)) (λ Hq, H (or.inr Hq)))
            (λ H, or.rec (and.left H) (and.right H))

example : (p → r ∨ s) → ((p → r) ∨ (p → s)) :=
  assume H,
  or.elim (em p)
          (λ Hp, or.elim (H Hp)
                         (λ Hr, or.inl (λ Hp, Hr))
                         (λ Hs, or.inr (λ Hp, Hs)))
          (λ Hnp, or.inl (λ Hp, absurd Hp Hnp))

example : ¬(p ∨ q) ↔ ¬p ∧ ¬q :=
  iff.intro (λ H, and.intro (λ Hp, H (or.inl Hp))
                            (λ Hq, H (or.inr Hq)))
            (λ H, λ H', or.elim H'
                                (λ Hp, (and.left H) Hp)
                                (λ Hq, (and.right H) Hq))

example : ¬p ∨ ¬q → ¬(p ∧ q) :=
  λ H Hpq, or.elim H
                   (λ Hnp, Hnp (and.left Hpq))
                   (λ Hnq, Hnq (and.right Hpq))

example : ¬(p ∧ ¬ p) :=
  λ H, (and.right H) (and.left H)

example : p ∧ ¬q → ¬(p → q) :=
  λ H H', (and.right H) (H' (and.left H))

example : ¬p → (p → q) :=
  λ Hnp Hp, absurd Hp Hnp

example : (¬p ∨ q) → (p → q) :=
  λ H Hp, or.elim H (λ Hnp, absurd Hp Hnp) (λ Hq, Hq)

example : p ∨ false ↔ p :=
  iff.intro (λ H, or.elim H (λ Hp, Hp) false.elim)
            (λ Hp, or.inl Hp)

example : p ∧ false ↔ false :=
  iff.intro (λ H, and.right H)
            false.elim

example : ¬(p ↔ ¬p) :=
  λ H, let Hnp := λ Hp, iff.mp H Hp Hp
       in let Hp := iff.mpr H Hnp
          in Hnp Hp

example : (p → q) → (¬q → ¬p) :=
  λ H Hnq Hp, Hnq (H Hp)

-- these require classical reasoning
-- example : (p → r ∨ s) → ((p → r) ∨ (p → s)) := sorry *same as above*

example : ¬(p ∧ q) → ¬p ∨ ¬q :=
  λ H, or.elim (em p)
               (λ Hp, or.inr (λ Hq, H (and.intro Hp Hq)))
               (λ Hnp, or.inl Hnp)

example : ¬(p → q) → p ∧ ¬q :=
  λ H, or.elim (em p)
               (λ Hp, and.intro Hp (λ Hq, H (λ Hp, Hq)))
               (λ Hnp, false.elim (H (λ Hp, absurd Hp Hnp)))

example : (p → q) → (¬p ∨ q) :=
  λ H, or.elim (em p)
               (λ Hp, or.inr (H Hp))
               (λ Hnp, or.inl Hnp)

example : (¬q → ¬p) → (p → q) :=
  λ H Hp, or.elim (em q)
                  (λ Hq, Hq)
                  (λ Hnq, absurd Hp (H Hnq))

example : p ∨ ¬p :=
  em p

example : (((p → q) → p) → p) :=
  λ H, or.elim (em q)
               (λ Hq, H (λ Hp, Hq))
               (λ Hnq, or.elim (em p)
                               (λ Hp, Hp)
                               (λ Hnp, H (λ Hp, absurd Hp Hnp)))
