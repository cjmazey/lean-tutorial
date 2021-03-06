import standard
structure Semigroup : Type :=
(carrier : Type)
(mul : carrier → carrier → carrier)
(mul_assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c))

notation a `*` b := Semigroup.mul _ a b

attribute Semigroup.carrier [coercion]

structure morphism (S1 S2 : Semigroup) : Type :=
(mor : S1 → S2)
(resp_mul : ∀ a b : S1, mor (a * b) = (mor a) * (mor b))

attribute morphism.mor [coercion]

-- BEGIN
theorem test (S1 S2 : Semigroup) (f : morphism S1 S2) (a : S1) :
f (a * a * a) = f a * f a * f a :=
calc
f (a * a * a) = f (a * a) * f a : morphism.resp_mul f
... = f a * f a * f a : morphism.resp_mul f

set_option pp.coercions true
check test

print coercions
-- END
