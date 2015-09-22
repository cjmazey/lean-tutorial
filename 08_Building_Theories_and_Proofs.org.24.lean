import standard
example (p q r : Prop) : p ∧ q ∧ r → q ∧ p :=
assume Hpqr : p ∧ q ∧ r,
have   Hp   : p,      from and.elim_left Hpqr,
have   Hqr  : q ∧ r,  from and.elim_right Hpqr,
assert Hq   : q,      from and.elim_left Hqr,
show q ∧ p, using Hp, from
proof
-- Hp is visible here because of =using Hp=
and.intro Hq Hp
qed
