/- page 62 -/

import standard
import data.nat

-- examples with equality
check eq
check @eq
check eq.symm
check @eq.symm

print eq.symm

-- examples with and
check and
check and.intro
check @and.intro

-- examples with addition
open nat
check add
check @add
eval add 3 2
print definition add

-- a user-defined function
definition foo {A : Type} (x : A) : A := x

check foo
check @foo
eval foo
eval (foo @nat.zero)
print foo
