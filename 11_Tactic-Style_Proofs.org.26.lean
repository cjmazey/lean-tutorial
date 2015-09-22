import standard
example (p q r : Prop) : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
begin
apply iff.intro,
{ intro H,
apply (or.elim (and.elim_right H)),
{ intro Hq,
apply or.intro_left,
apply and.intro,
{ exact (and.elim_left H) },
{ exact Hq }},
{ intro Hr,
apply or.intro_right,
apply and.intro,
{ exact (and.elim_left H)},
{ exact Hr }}},
{ intro H,
apply (or.elim H),
{ intro Hpq,
apply and.intro,
{ exact (and.elim_left Hpq) },
{ apply or.intro_left,
exact (and.elim_right Hpq) }},
{ intro Hpr,
apply and.intro,
{ exact (and.elim_left Hpr)},
{ apply or.intro_right,
exact (and.elim_right Hpr) }}}
end
