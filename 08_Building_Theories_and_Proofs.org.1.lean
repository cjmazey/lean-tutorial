import standard
structure Semigroup : Type :=
(carrier : Type)
(mul : carrier → carrier → carrier)
(mul_assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c))

notation a `*` b := Semigroup.mul _ a b
