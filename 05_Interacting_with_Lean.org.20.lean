import standard
import data.bool data.nat
open bool nat

-- BEGIN
definition bool.to_nat (b : bool) : nat :=
bool.cond b 1 0

attribute bool.to_nat [coercion]
-- END
eval 2 + ff
eval 2 + tt
eval tt + tt + tt + ff
