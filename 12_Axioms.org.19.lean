import standard
import logic.quantifiers
open subtype nonempty

namespace hide

axiom strong_indefinite_description {A : Type} (P : A → Prop) (H : nonempty A) :
{ x | (∃ y : A, P y) → P x}

noncomputable definition epsilon {A : Type} [H : nonempty A] (P : A → Prop) : A :=
let u : {x | (∃ y, P y) → P x} :=
strong_indefinite_description P H in
elt_of u

theorem epsilon_spec_aux {A : Type} (H : nonempty A) (P : A → Prop) (Hex : ∃ y, P y) :
P (@epsilon A H P) :=
let u : {x | (∃ y, P y) → P x} :=
strong_indefinite_description P H in
has_property u Hex

theorem epsilon_spec {A : Type} {P : A → Prop} (Hex : ∃ y, P y) :
P (@epsilon A (nonempty_of_exists Hex) P) :=
epsilon_spec_aux (nonempty_of_exists Hex) P Hex

-- BEGIN
noncomputable definition some {A : Type} {P : A → Prop} (H : ∃ x, P x) : A :=
@epsilon A (nonempty_of_exists H) P

theorem some_spec {A : Type} {P : A → Prop} (H : ∃ x, P x) : P (some H) :=
epsilon_spec H
-- END

end hide
