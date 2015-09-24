/- page 31 -/

import standard
section
variable {A : Type}
variable x : A
definition id := x
end

variables A B : Type
variables (a : A) (b : B)

check id
check id a
check id b
