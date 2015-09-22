import standard
-- BEGIN
variables p q : Prop

example : p ∧ q ↔ q ∧ p :=
begin
apply iff.intro,
begin
intro H,
have Hp : p, from and.left H,
have Hq : q, from and.right H,
apply and.intro,
repeat assumption
end,
begin
intro H,
have Hp : p,
begin
apply and.right,
apply H
end,
have Hq : q, by apply and.left; exact H,
apply (and.intro Hp Hq)
end
end
-- END
