import standard
import data.examples.vector
open nat vector

-- BEGIN
definition tail_aux {A : Type} {n m : nat} (v : vector A m) :
m = succ n → vector A n :=
vector.cases_on v
(assume H : 0 = succ n, nat.no_confusion H)
(take m (a : A) w : vector A m,
assume H : succ m = succ n,
have H1 : m = n, from succ.inj H,
eq.rec_on H1 w)

definition tail {A : Type} {n : nat} (v : vector A (succ n)) : vector A n :=
tail_aux v rfl
-- END
