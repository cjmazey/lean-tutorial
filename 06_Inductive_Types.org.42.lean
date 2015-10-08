/- page 91 -/

import standard
namespace hide

-- BEGIN
inductive eq {A : Type} (a : A) : A → Prop :=
refl : eq a a
-- END

end hide
