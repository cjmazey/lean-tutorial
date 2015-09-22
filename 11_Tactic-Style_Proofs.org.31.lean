import standard
example (p q : Prop) : p ∧ q → q ∧ p :=
begin
intro H,
cases H with [H1, H2],
apply and.intro,
exact H2,
exact H1
end
