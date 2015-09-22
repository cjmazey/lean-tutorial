import standard
namespace hide

axiom propext {a b : Prop} : (a ↔ b) → a = b

-- BEGIN
section
open eq.ops
variables a b c d e : Prop
variable P : Prop → Prop

example (H : a ↔ b) : (c ∧ a ∧ d → e) ↔ (c ∧ b ∧ d → e) :=
propext H ▸ !iff.refl

example (H : a ↔ b) (H1 : P a) : P b :=
propext H ▸ H1
end
-- END

end hide
