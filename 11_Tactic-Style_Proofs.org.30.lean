import standard
import data.nat
open nat

check nat.sub_self

example (m n : nat) : m - n = 0 ∨ m ≠ n :=
begin
cases (decidable.em (m = n)) with [Heq, Hne],
{ apply eq.subst Heq,
exact or.inl (sub_self m)},
{ apply or.inr Hne }
end
