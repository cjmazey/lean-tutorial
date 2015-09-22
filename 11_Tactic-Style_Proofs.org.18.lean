import standard
import data.nat
open nat

variables x y z : ℕ

-- BEGIN
example : x + y + z = x + y + z :=
begin
generalize (x + y + z), -- goal is x y z : ℕ ⊢ ∀ (x : ℕ), x = x
intro w,                -- goal is x y z w : ℕ ⊢ w = w
apply rfl
end
-- END
