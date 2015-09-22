import standard
import data.nat
open nat

variables x y z w : ℕ

-- BEGIN
example : x = x :=
begin
revert x,     -- goal is ⊢ ∀ (x : ℕ), x = x
intro y,      -- goal is y : ℕ ⊢ y = y
apply rfl
end

example (H : x = y) : y = x :=
begin
revert H,     -- goal is x y : ℕ ⊢ x = y → y = x
intro H1,     -- goal is x y : ℕ, H1 : x = y ⊢ y = x
apply (eq.symm H1)
end
-- END
