import standard
import standard
import logic
open eq.ops

namespace hide

definition set (X : Type) := X → Prop

namespace set

variable {X : Type}

definition mem [reducible] (x : X) (a : set X) := a x
notation e ∈ a := mem e a

theorem setext {a b : set X} (H : ∀ x, x ∈ a ↔ x ∈ b) : a = b :=
funext (take x, propext (H x))

-- BEGIN
definition empty [reducible] : set X := λ x, false
notation `∅` := empty

definition inter [reducible] (a b : set X) : set X := λ x, x ∈ a ∧ x ∈ b
notation a ∩ b := inter a b

theorem inter_self (a : set X) : a ∩ a = a :=
setext (take x, !and_self)

theorem inter_empty (a : set X) : a ∩ ∅ = ∅ :=
setext (take x, !and_false)

theorem empty_inter (a : set X) : ∅ ∩ a = ∅ :=
setext (take x, !false_and)

theorem inter.comm (a b : set X) : a ∩ b = b ∩ a :=
setext (take x, !and.comm)
-- END

end set
end hide
