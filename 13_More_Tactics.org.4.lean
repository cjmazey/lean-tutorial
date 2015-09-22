import standard
import data.nat
open nat

variables a b c d : ℕ

example (Ha : a = b + c) : c + a = c + (b + c) :=
by subst a

example (Ha : a = b + c) (Hd : d = b) : a + d = b + c + d :=
by subst [a, d]

example (Ha : a = b + c) (Hd : d = b) : a + d = b + c + d :=
by substvars

example (Ha : a = b + c) (Hd : b = d) : a + d = d + c + d :=
by substvars

example (Hd : b = d) (Ha : a = b + c) : a + d = d + c + d :=
by substvars
