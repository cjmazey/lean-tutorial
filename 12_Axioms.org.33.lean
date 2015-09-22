import standard
import data.encodable
open encodable function

-- BEGIN
section
parameters {A B : Type} (f : A → B)

definition decidable_in_image_of_surjective : surjective f → ∀ b, decidable (∃ a, f a = b) :=
assume s : surjective f, take b,
decidable.inl (s b)

definition decidable_in_image_of_fintype_of_deceq [instance]
[finA : fintype A] [deqB : decidable_eq B] : ∀ b, decidable (∃ a, f a = b) :=
take b, decidable_exists_finite
end
-- END
