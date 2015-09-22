import standard
example (p q r : Prop) : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
begin
apply iff.intro,
intro H,
apply (or.elim (and.elim_right H)),
intro Hq,
show (p ∧ q) ∨ (p ∧ r),
from or.inl (and.intro (and.elim_left H) Hq),
intro Hr,
show (p ∧ q) ∨ (p ∧ r),
from or.inr (and.intro (and.elim_left H) Hr),
intro H,
apply (or.elim H),
intro Hpq,
show p ∧ (q ∨ r), from
and.intro
(and.elim_left Hpq)
(or.inl (and.elim_right Hpq)),
intro Hpr,
show p ∧ (q ∨ r), from
and.intro
(and.elim_left Hpr)
(or.inr (and.elim_right Hpr))
end
