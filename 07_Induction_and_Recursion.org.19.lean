/- page 107 -/

import standard
variables {A B : Type}
inductive image_of (f : A → B) : B → Type :=
imf : Π a, image_of f (f a)

open image_of

definition inv {f : A → B} : Π b, image_of f b → A
| inv ⌞f a⌟ (imf f a) := a
