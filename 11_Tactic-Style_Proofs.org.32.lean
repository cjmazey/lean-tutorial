import standard
import data.nat
open nat

inductive foo : Type :=
| bar1 : ℕ → ℕ → foo
| bar2 : ℕ → ℕ → ℕ → foo

definition silly (x : foo) : ℕ :=
begin
cases x with [a, b, c, d, e],
exact b,    -- a, b, c are in the context
exact e     -- d, e    are in the context
end
