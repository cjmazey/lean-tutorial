/- page 36 -/

import standard
constants p q : Prop

-- BEGIN
theorem t1 : p → q → p := λ Hp : p, λ Hq : q, Hp

reveal t1
print t1
-- END
