import standard
namespace hide
variables {A : Type} (R : A → A → Prop)

definition reflexive  : Prop := ∀ (a : A), R a a
definition symmetric  : Prop := ∀ ⦃a b : A⦄, R a b → R b a
definition transitive : Prop := ∀ ⦃a b c : A⦄, R a b → R b c → R a c
definition euclidean  : Prop := ∀ ⦃a b c : A⦄, R a b → R a c → R b c

variable {R}

theorem th1 (refl : reflexive R) (eucl : euclidean R) : symmetric R :=
take a b : A, assume (H : R a b),
show R b a, from eucl H !refl

theorem th2 (symm : symmetric R) (eucl : euclidean R) : transitive R :=
take (a b c : A), assume (H : R a b) (K : R b c),
have H' : R b a, from symm H,
show R a c, from eucl H' K
-- BEGIN
theorem th3 (refl : reflexive R) (eucl : euclidean R) : transitive R :=
th2 (th1 refl eucl) eucl
-- END
end hide
