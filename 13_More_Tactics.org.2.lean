import standard
import data.finset data.nat
open finset nat

variables (A : Type) [deceqA : decidable_eq A]
include deceqA

theorem card_add_card (s₁ s₂ : finset A) : card s₁ + card s₂ = card (s₁ ∪ s₂) + card (s₁ ∩ s₂) :=
begin
induction s₂ with a s₂ hs₂ ih,
show card s₁ + card (∅:finset A) = card (s₁ ∪ ∅) + card (s₁ ∩ ∅),
by rewrite [union_empty, card_empty, inter_empty],
show card s₁ + card (insert a s₂) = card (s₁ ∪ (insert a s₂)) + card (s₁ ∩ (insert a s₂)),
from sorry
end
