/- page 44 -/

import standard
open classical

variables p q r s : Prop

-- commutativity of ∧ and ∨
example : p ∧ q ↔ q ∧ p :=
  have swap : ∀ {p q : Prop}, p ∧ q → q ∧ p,
    from assume p q : Prop,
         assume Hpq : p ∧ q,
         show q ∧ p, from and.intro (and.right Hpq) (and.left Hpq),
  iff.intro swap swap

example : p ∧ q ↔ q ∧ p :=

exit
example : p ∨ q ↔ q ∨ p :=
  iff.intro or.swap or.swap

-- associativity of ∧ and ∨
example : (p ∧ q) ∧ r ↔ p ∧ (q ∧ r) :=
  and.assoc

example : (p ∨ q) ∨ r ↔ p ∨ (q ∨ r) := sorry

-- distributivity
example : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) := sorry
example : p ∨ (q ∧ r) ↔ (p ∨ q) ∧ (p ∨ r) := sorry

-- other properties
example : (p → (q → r)) ↔ (p ∧ q → r) := sorry
example : ((p ∨ q) → r) ↔ (p → r) ∧ (q → r) := sorry
example : (p → r ∨ s) → ((p → r) ∨ (p → s)) := sorry
example : ¬(p ∨ q) ↔ ¬p ∧ ¬q := sorry
example : ¬p ∨ ¬q → ¬(p ∧ q) := sorry
example : ¬(p ∧ ¬ p) := sorry
example : p ∧ ¬q → ¬(p → q) := sorry
example : ¬p → (p → q) := sorry
example : (¬p ∨ q) → (p → q) := sorry
example : p ∨ false ↔ p := sorry
example : p ∧ false ↔ false := sorry
example : ¬(p ↔ ¬p) := sorry

example : (p → q) → (¬q → ¬p) :=
  λ Hpq Hnq Hp, absurd (Hpq Hp) Hnq

-- these require classical reasoning
example : (p → r ∨ s) → ((p → r) ∨ (p → s)) := sorry
example : ¬(p ∧ q) → ¬p ∨ ¬q := sorry
example : ¬(p → q) → p ∧ ¬q := sorry
example : (p → q) → (¬p ∨ q) := sorry
example : (¬q → ¬p) → (p → q) := sorry
example : p ∨ ¬p := sorry
example : (((p → q) → p) → p) := sorry
