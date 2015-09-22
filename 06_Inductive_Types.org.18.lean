import standard
structure Semigroup : Type :=
(carrier : Type)
(mul : carrier → carrier → carrier)
(mul_assoc : ∀ a b c, mul (mul a b) c = mul a (mul b c))
