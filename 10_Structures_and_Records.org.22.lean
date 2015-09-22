import standard
structure has_mul [class] (A : Type) :=
(mul : A → A → A)

structure has_one [class] (A : Type) :=
(one : A)

structure has_inv [class] (A : Type) :=
(inv : A → A)

infixl `*`   := has_mul.mul
postfix `⁻¹` := has_inv.inv
notation 1   := has_one.one

structure semigroup [class] (A : Type) extends has_mul A :=
(assoc : ∀ a b c, mul (mul a b) c = mul a (mul b c))

structure comm_semigroup [class] (A : Type) extends semigroup A renaming mul→add:=
(comm : ∀ a b, add a b = add b a)

structure monoid [class] (A : Type) extends semigroup A, has_one A :=
(right_id : ∀ a, mul a one = a) (left_id : ∀ a, mul one a = a)

structure comm_monoid [class] (A : Type) extends monoid A renaming mul→add, comm_semigroup A

-- BEGIN
structure group [class] (A : Type) extends monoid A, has_inv A :=
(is_inv : ∀ a, mul a (inv a) = one)

structure abelian_group [class] (A : Type) extends group A renaming mul→add, comm_monoid A

structure ring [class] (A : Type)
extends abelian_group A renaming
assoc→add.assoc
comm→add.comm
one→zero
right_id→add.right_id
left_id→add.left_id
inv→uminus
is_inv→uminus_is_inv,
monoid A renaming
assoc→mul.assoc
right_id→mul.right_id
left_id→mul.left_id
:=
(dist_left  : ∀ a b c, mul a (add b c) = add (mul a b) (mul a c))
(dist_right : ∀ a b c, mul (add a b) c = add (mul a c) (mul b c))
-- END
