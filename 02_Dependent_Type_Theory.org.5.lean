/- page 14 -/

import standard
import data.nat data.prod
open nat prod

-- BEGIN
constants A B : Type

check prod           -- Type → Type → Type
check prod A         -- Type → Type
check prod A B       -- Type
check prod nat nat   -- Type₁
-- END
