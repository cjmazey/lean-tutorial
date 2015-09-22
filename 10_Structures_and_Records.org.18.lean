import standard
structure has_mul [class] (A : Type) :=
mk :: (mul : A → A → A)

check @has_mul.mul    -- Π {A : Type} [c : has_mul A], A → A → A

infixl `*`   := has_mul.mul

section
variables (A : Type) (s : has_mul A) (a b : A)
check a * b
end
