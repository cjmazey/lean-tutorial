import standard
-- BEGIN
import logic.eq
open classical eq.ops

section
parameter  p : Prop

definition U (x : Prop) : Prop := x = true ∨ p
definition V (x : Prop) : Prop := x = false ∨ p
-- END

end
