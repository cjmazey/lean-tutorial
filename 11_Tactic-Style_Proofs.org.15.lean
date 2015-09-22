import standard
import data.nat
open nat

example : ∃ a : ℕ, a = a :=
begin
fapply exists.intro,
exact nat.zero,
apply rfl
end
