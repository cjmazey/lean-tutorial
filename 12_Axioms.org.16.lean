import standard
open subtype nonempty

namespace hide
-- BEGIN
axiom strong_indefinite_description {A : Type} (P : A → Prop) (H : nonempty A) :
{ x | (∃ y : A, P y) → P x}
-- END
end hide
