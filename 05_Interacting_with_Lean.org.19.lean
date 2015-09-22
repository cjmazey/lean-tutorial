import standard
import data.bool data.nat
open bool nat

definition bool.to_nat [coercion] (b : bool) : nat :=
bool.cond b 1 0

eval 2 + ff
eval 2 + tt
eval tt + tt + tt + ff

print coercions        -- show all coercions
print coercions bool   -- show all coercions from bool
