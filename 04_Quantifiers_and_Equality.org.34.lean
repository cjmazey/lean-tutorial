/- page 60 -/

import standard
import data.nat
open nat

-- BEGIN
definition idnat : ℕ → ℕ :=
take `ℕ`, `ℕ`

print idnat

definition idnat2 : ℕ → ℕ → ℕ :=
take `ℕ` `ℕ`, `ℕ`

print idnat2
eval idnat2 0 1  -- returns 1
-- END
