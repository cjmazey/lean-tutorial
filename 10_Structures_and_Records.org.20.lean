import standard
structure has_mul [class] (A : Type) :=
mk :: (mul : A → A → A)

infixl `*`   := has_mul.mul

structure semigroup [class] (A : Type) extends has_mul A :=
mk :: (assoc : ∀ a b c, mul (mul a b) c = mul a (mul b c))

-- BEGIN
section
variables (A : Type) (s : semigroup A) (a b : A)

set_option pp.implicit true
set_option pp.notation false

check a * b -- @has_mul.mul A (@semigroup.to_has_mul A s) a b : A
end
-- END
