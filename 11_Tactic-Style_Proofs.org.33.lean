import standard
example (p q r : Prop) : p ∧ q ↔ q ∧ p :=
begin
apply iff.intro,
{ intro H,
match H with
|  and.intro H₁ H₂ := by apply and.intro; repeat assumption
end },
{ intro H,
match H with
| and.intro H₁ H₂ := by apply and.intro; repeat assumption
end },
end
