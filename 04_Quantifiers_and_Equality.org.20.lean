import standard
import data.nat
open nat

example : ∃ x, x > 0 :=
have H : 1 > 0, from succ_pos 0,
exists.intro 1 H

example (x : ℕ) (H : x > 0) : ∃ y, y < x :=
exists.intro 0 H

example (x y z : ℕ) (Hxy : x < y) (Hyz : y < z) : ∃ w, x < w ∧ w < z :=
exists.intro y (and.intro Hxy Hyz)

check @exists.intro
