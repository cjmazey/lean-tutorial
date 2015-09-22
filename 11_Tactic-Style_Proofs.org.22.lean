import standard
example (p q : Prop) (H : p ∧ q) : p ∧ q ∧ p :=
assert Hp : p, from and.left H,
assert Hq : q, from and.right H,
begin
apply (and.intro Hp),
apply (and.intro Hq),
exact Hp
end

example (p q : Prop) (H : p ∧ q) : p ∧ q ∧ p :=
assert Hp : p, from and.left H,
assert Hq : q, from and.right H,
begin
apply and.intro,
assumption,
apply and.intro,
repeat assumption
end
