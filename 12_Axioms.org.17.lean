import standard
open subtype nonempty

namespace hide
-- BEGIN
axiom indefinite_description {A : Type} {P : A → Prop} (H : ∃ x, P x) :
{x : A | P x}
-- END
end hide
