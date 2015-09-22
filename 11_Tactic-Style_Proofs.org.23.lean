import standard
example (p q : Prop) (H : p ∧ q) : p ∧ q ∧ p :=
have Hp : p, from and.left H,
have Hq : q, from and.right H,
show _, using Hp Hq,
begin
apply and.intro,
assumption,
apply and.intro,
repeat assumption
end
