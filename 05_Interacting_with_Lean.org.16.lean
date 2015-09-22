import standard
import data.nat
open nat

abbreviation double (x : ℕ) : ℕ := x + x

theorem foo (x : ℕ) : double x = x + x := rfl
check foo
