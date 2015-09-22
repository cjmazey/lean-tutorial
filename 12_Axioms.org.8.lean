import standard
namespace hide

-- BEGIN
open setoid
constant quot.{l}   : Π {A : Type.{l}}, setoid A → Type.{l}

namespace quot
constant mk        : Π {A : Type}   [s : setoid A], A → quot s
notation `⟦`:max a `⟧`:0 := mk a

constant sound     : Π {A : Type}   [s : setoid A] {a b : A}, a ≈ b → ⟦a⟧ = ⟦b⟧
constant lift      : Π {A B : Type} [s : setoid A] (f : A → B), (∀ a b, a ≈ b → f a = f b) → quot s → B
constant ind       : ∀ {A : Type}   [s : setoid A] {B : quot s → Prop}, (∀ a, B ⟦a⟧) → ∀ q, B q
end quot
-- END

end hide
