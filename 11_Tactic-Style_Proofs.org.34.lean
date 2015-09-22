import standard
import data.nat
open nat

inductive foo : Type :=
| bar1 : ℕ → ℕ → foo
| bar2 : ℕ → ℕ → ℕ → foo

-- BEGIN
example (x : ℕ) (H : x ≠ 0) : succ (pred x) = x :=
begin
revert H,
match x with
| 0      := by intro H1; exact (absurd rfl H1)
| succ y := by intro H1; apply rfl
end
end

definition silly (x : foo) : ℕ :=
begin
match x with
| foo.bar1 a b   := b
| foo.bar2 c d e := e
end
end
-- END
