import standard
example (a b : Prop) : a ∨ b → b ∨ a :=
begin
intro H,
cases H with [Ha, Hb],
{ exact or.inr Ha },
{ exact or.inl Hb }
end
