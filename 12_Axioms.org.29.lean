import standard
open classical function

noncomputable definition linv {A B : Type} [h : inhabited A] (f : A → B) : B → A :=
λ b : B, if ex : (∃ a : A, f a = b) then some ex else arbitrary A

theorem has_left_inverse_of_injective {A B : Type} {f : A → B}
: inhabited A → injective f → ∃ g, g ∘ f = id :=
assume h   : inhabited A,
assume inj : ∀ a₁ a₂, f a₁ = f a₂ → a₁ = a₂,
have is_linv  : (linv f) ∘ f = id, from
funext (λ a,
assert ex  : ∃ a₁ : A, f a₁ = f a,   from exists.intro a rfl,
have   feq : f (some ex) = f a,      from !some_spec,
calc linv f (f a) = some ex   :  dif_pos ex
...    = a         :  inj _ _ feq),
exists.intro (linv f) is_linv
