import standard
import data.prod
open prod

namespace hide

-- BEGIN
definition pr1 {A B : Type} (p : A × B) : A :=
prod.rec_on p (λ a b, a)

definition pr2 {A B : Type} (p : A × B) : B :=
prod.rec_on p (λ a b, b)
-- END

end hide
