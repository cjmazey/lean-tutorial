/- page 32 -/

import standard
namespace hide

-- BEGIN
constant and : Prop → Prop → Prop
constant or : Prop → Prop → Prop
constant not : Prop → Prop
constant implies : Prop → Prop → Prop

variables p q r : Prop
check and p q                      -- Prop
check or (and p q) r               -- Prop
check implies (and p q) (and q p)  -- Prop
-- END

end hide
