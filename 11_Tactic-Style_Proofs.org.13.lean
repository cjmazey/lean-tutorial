import standard
example : ∀ a b c : nat, a = b → a = c → c = b :=
begin
intros,
apply eq.trans,
apply eq.symm,
assumption,
assumption
end
