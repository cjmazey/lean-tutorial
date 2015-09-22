import standard
namespace hide

-- BEGIN
inductive Exists {A : Type} (P : A → Prop) : Prop :=
intro : ∀ (a : A), P a → Exists P

definition exists.intro := @Exists.intro
-- END

end hide
