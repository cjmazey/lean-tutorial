import standard
import data.encodable
open encodable subtype
-- BEGIN
check @choose
-- choose : Π {A : Type} {p : A → Prop} [c : encodable A] [d : decidable_pred p], (∃ (x : A), p x) → A
check @choose_spec
-- choose_spec : ∀ {A : Type} {p : A → Prop} [c : encodable A] [d : decidable_pred p] (ex : ∃ (x : A), p x), p (choose ex)
-- END
