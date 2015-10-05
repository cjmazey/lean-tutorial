/- page 74 -/

import standard
import data.bool data.nat
open bool nat

-- BEGIN
definition bool.to_nat (b : bool) : nat :=
bool.cond b 1 0

local attribute bool.to_nat [coercion]
-- END
