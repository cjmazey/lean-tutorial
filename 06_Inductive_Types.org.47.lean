/- page 93 -/

import standard
namespace hide

-- BEGIN
inductive heq {A : Type} (a : A) : Π {B : Type}, B → Prop :=
refl : heq a a
-- END

end hide
