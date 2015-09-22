import standard
structure has_mul [class] (A : Type) :=
mk :: (mul : A → A → A)

structure has_one [class] (A : Type) :=
mk :: (one : A)

structure has_inv [class] (A : Type) :=
mk :: (inv : A → A)

infixl `*`   := has_mul.mul
postfix `⁻¹` := has_inv.inv
notation 1   := has_one.one

structure semigroup [class] (A : Type) extends has_mul A :=
mk :: (assoc : ∀ a b c, mul (mul a b) c = mul a (mul b c))

structure comm_semigroup [class] (A : Type) extends semigroup A :=
mk :: (comm : ∀ a b, mul a b = mul b a)

structure monoid [class] (A : Type) extends semigroup A, has_one A :=
mk :: (right_id : ∀ a, mul a one = a) (left_id : ∀ a, mul one a = a)

structure comm_monoid [class] (A : Type) extends monoid A, comm_semigroup A

print prefix comm_monoid
