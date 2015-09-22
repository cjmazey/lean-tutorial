import standard
structure has_mul [class] (A : Type) :=
mk :: (mul : A → A → A)

infixl `*`   := has_mul.mul

structure semigroup [class] (A : Type) extends has_mul A :=
mk :: (assoc : ∀ a b c, mul (mul a b) c = mul a (mul b c))

section
variables (A : Type) (s : semigroup A) (a b : A)
check a * b
end
