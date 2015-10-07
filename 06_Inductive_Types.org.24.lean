/- page 85 -/

import standard
namespace hide

-- BEGIN
inductive subtype {A : Type} (P : A → Prop) : Type :=
tag : Π x : A, P x → subtype P
-- END

end hide
