import standard
example (p q r : Prop) : p ∧ q ∧ r → q ∧ p :=
assume Hpqr : p ∧ q ∧ r,
assert Hp   : p,     from and.elim_left Hpqr,
have   Hqr  : q ∧ r, from and.elim_right Hpqr,
assert Hq   : q,     from and.elim_left Hqr,
proof
-- Hp and Hq are visible here,
-- Hqr is not because we used "have".
and.intro Hq Hp
qed
