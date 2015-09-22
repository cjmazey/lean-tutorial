import standard
import logic
open eq.ops

namespace hide

-- BEGIN
definition set (X : Type) := X → Prop

namespace set

variable {X : Type}

definition mem [reducible] (x : X) (a : set X) := a x
notation e ∈ a := mem e a

theorem setext {a b : set X} (H : ∀ x, x ∈ a ↔ x ∈ b) : a = b :=
funext (take x, propext (H x))

end set
-- END
end hide
