import standard
import data.nat
open nat

example (x : ℕ) (H : x ≠ 0) : succ (pred x) = x :=
begin
revert H,
cases x,
-- first goal: ⊢ 0 ≠ 0 → succ (pred 0) = 0
{ intro H1,
apply (absurd rfl H1)},
-- second goal: ⊢ succ a ≠ 0 → succ (pred (succ a)) = succ a
{ intro H1,
apply rfl}
end
