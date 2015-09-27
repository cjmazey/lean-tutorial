/- page 45 -/

import standard
open classical

variables p q r : Prop

-- distributivity
example : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
iff.intro
(assume H : p ∧ (q ∨ r),
have Hp : p, from and.left H,
or.elim (and.right H)
(assume Hq : q,
show (p ∧ q) ∨ (p ∧ r), from or.inl (and.intro Hp Hq))
(assume Hr : r,
show (p ∧ q) ∨ (p ∧ r), from or.inr (and.intro Hp Hr)))
(assume H : (p ∧ q) ∨ (p ∧ r),
or.elim H
(assume Hpq : p ∧ q,
have Hp : p, from and.left Hpq,
have Hq : q, from and.right Hpq,
show p ∧ (q ∨ r), from and.intro Hp (or.inl Hq))
(assume Hpr : p ∧ r,
have Hp : p, from and.left Hpr,
have Hr : r, from and.right Hpr,
show p ∧ (q ∨ r), from and.intro Hp (or.inr Hr)))

-- an example that requires classical reasoning
example : ¬(p ∧ ¬q) → (p → q) :=
assume H : ¬(p ∧ ¬q),
assume Hp : p,
show q, from
or.elim (em q)
(assume Hq : q, Hq)
(assume Hnq : ¬q, absurd (and.intro Hp Hnq) H)
