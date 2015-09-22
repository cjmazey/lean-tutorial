import standard
namespace hide

-- BEGIN
check @funext
-- ∀ {A : Type} {B : A → Type} {f₁ f₂ : Π x : A, B x}, (∀ x, f₁ x = f₂ x) → f₁ = f₂
-- END
end hide
