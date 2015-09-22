import standard
namespace hide
variables {A : Type} (R : A → A → Prop)
-- BEGIN
definition symmetric  : Prop := ∀ ⦃a b : A⦄, R a b → R b a
definition transitive : Prop := ∀ ⦃a b c : A⦄, R a b → R b c → R a c
definition euclidean  : Prop := ∀ ⦃a b c : A⦄, R a b → R a c → R b c
-- END
end hide
