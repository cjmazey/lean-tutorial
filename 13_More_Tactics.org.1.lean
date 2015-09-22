import standard
import data.nat
open nat

theorem zero_add (x : ℕ) : 0 + x = x :=
begin
induction x with x ih,
{exact rfl},
rewrite [add_succ, ih]
end

theorem succ_add (x y : ℕ) : succ x + y = succ (x + y) :=
begin
induction y with y ih,
{exact rfl},
rewrite [add_succ, ih]
end

theorem add.comm (x y : ℕ) : x + y = y + x :=
begin
induction x with x ih,
{show 0 + y = y + 0, by rewrite zero_add},
show succ x + y = y + succ x,
begin
induction y with y ihy,
{rewrite zero_add},
rewrite [succ_add, ih]
end
end
