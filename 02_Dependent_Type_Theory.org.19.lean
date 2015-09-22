import standard
import data.nat
open nat

constant n : ℕ
check let y := n + n in y * y

definition t (x : ℕ) : ℕ :=
let y := x + x in y * y
