/- page 80 -/

import standard
import data.bool
open bool

namespace hide

-- BEGIN
definition band (b1 b2 : bool) : bool :=
bool.cases_on b1
ff
(bool.cases_on b2 ff tt)
-- END

end hide
