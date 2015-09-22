import standard
example : ∀ a b c : nat, a = b → a = c → c = b :=
begin
intros [a, b, c, H1, H2],
exact eq.trans (eq.symm H2) H1
end
