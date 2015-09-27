/- page 33 -/

import standard
namespace hide

constant and : Prop → Prop → Prop
constant or : Prop → Prop → Prop
constant not : Prop → Prop
constant implies : Prop → Prop → Prop

-- BEGIN
constant Proof : Prop → Type

constant and_comm : Π p q : Prop, Proof (implies (and p q) (and q p))

variables p q : Prop
check and_comm p q      -- Proof (implies (and p q) (and q p))
-- END

end hide
