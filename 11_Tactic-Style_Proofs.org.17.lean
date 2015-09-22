import standard
import data.nat
open nat

variables x y z : ℕ

example : x = x :=
begin
generalize x, -- goal is x : ℕ ⊢ ∀ (x : ℕ), x = x
intro y,      -- goal is x y : ℕ ⊢ y = y
apply rfl
end

example (H : x = y) : y = x :=
begin
generalize H, -- goal is x y : ℕ, H : x = y ⊢ y = x
intro H1,     -- goal is x y : ℕ, H H1 : x = y ⊢ y = x
apply (eq.symm H1)
end
