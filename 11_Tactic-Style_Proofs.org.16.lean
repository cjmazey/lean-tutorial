import standard
import data.nat
open nat

-- BEGIN
example : ∃ a : ℕ, a = a :=
begin
fapply exists.intro,
exact (0 : ℕ),
apply rfl
end
-- END
