/- page 82 -/

import standard
open nat

-- BEGIN
record color := (red : nat) (green : nat) (blue : nat)
definition yellow := color.mk 255 255 0
eval color.red yellow
-- END
