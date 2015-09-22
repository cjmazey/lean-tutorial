import standard
import data.encodable
open encodable function

section
parameters {A B : Type}
parameter  (f : A → B)
parameter  [inhA : inhabited A]
parameter  [dex  : ∀ b, decidable (∃ a, f a = b)]
parameter  [encB : encodable A]
parameter  [deqB : decidable_eq B]
include inhA dex encB deqB

definition finv : B → A :=
λ b : B, if ex : (∃ a, f a = b) then choose ex else arbitrary A

theorem has_left_inverse_of_injective : injective f → has_left_inverse f :=
assume inj : ∀ a₁ a₂, f a₁ = f a₂ → a₁ = a₂,
have is_linv : ∀ a, finv (f a) = a, from
(take a,
assert ex  : ∃ a₁, f a₁ = f a, from exists.intro a rfl,
have   feq : f (choose ex) = f a, from !choose_spec,
calc finv (f a) = choose ex :  dif_pos ex
...    = a         :  inj _ _ feq),
exists.intro finv is_linv
end
