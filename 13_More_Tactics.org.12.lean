import standard
example (a b c d : Prop) : a ∧ b ∧ c ∧ d ↔ d ∧ c ∧ b ∧ a :=
begin
apply iff.intro,
repeat (intro H; repeat (cases H with [H', H] | apply and.intro | assumption))
end
