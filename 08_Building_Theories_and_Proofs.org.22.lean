import standard
example (p q r : Prop) : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
iff.intro
(assume H : p ∧ (q ∨ r),
show (p ∧ q) ∨ (p ∧ r), from
proof
have Hp : p, from and.elim_left H,
or.elim (and.elim_right H)
(assume Hq : q,
show (p ∧ q) ∨ (p ∧ r), from or.inl (and.intro Hp Hq))
(assume Hr : r,
show (p ∧ q) ∨ (p ∧ r), from or.inr (and.intro Hp Hr))
qed)
(assume H : (p ∧ q) ∨ (p ∧ r),
show p ∧ (q ∨ r), from
proof
or.elim H
(assume Hpq : p ∧ q,
have Hp : p, from and.elim_left Hpq,
have Hq : q, from and.elim_right Hpq,
show p ∧ (q ∨ r), from and.intro Hp (or.inl Hq))
(assume Hpr : p ∧ r,
have Hp : p, from and.elim_left Hpr,
have Hr : r, from and.elim_right Hpr,
show p ∧ (q ∨ r), from and.intro Hp (or.inr Hr))
qed)
