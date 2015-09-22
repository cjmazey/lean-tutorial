import standard
example (A : Type) : A → A :=
begin
intro a,
exact a
end

example (A : Type) : ∀ x : A, x = x :=
begin
intro x,
exact eq.refl x
end
