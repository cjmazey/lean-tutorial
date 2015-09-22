import standard
open classical

section
variable A : Type
variable a : A

-- o.k.
example : ∃ x : A, x = x :=
have H1 : ∃ y, y = y, from exists.intro a rfl,
have H2 : some H1 = some H1, from some_spec H1,
exists.intro (some H1) H2

/-
-- invalid local context
example : ∃ x : A, x = x :=
have H1 : ∃ y, y = y, from exists.intro a rfl,
have H2 : some H1 = some H1, from some_spec H1,
exists.intro _ H2
-/

-- o.k.
example : ∃ x : A, x = x :=
assert H1 : ∃ y, y = y, from exists.intro a rfl,
have H2 : some H1 = some H1, from some_spec H1,
exists.intro _ H2

/-
-- invalid local context
example : ∃ x : A, x = x :=
have H1 : ∃ y, y = y, from exists.intro a rfl,
have H2 : some H1 = some H1, from some_spec H1,
exists.intro (some H1) (eq.trans H2 H2)
-/

-- o.k.
example : ∃ x : A, x = x :=
assert H1 : ∃ y, y = y, from exists.intro a rfl,
have H2 : some H1 = some H1, from some_spec H1,
exists.intro (some H1) (eq.trans H2 H2)
end
