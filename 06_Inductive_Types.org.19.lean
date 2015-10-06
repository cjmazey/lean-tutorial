/- page 83 -/

import standard
namespace hide

-- BEGIN
inductive sum (A B : Type) : Type :=
| inl {} : A → sum A B
| inr {} : B → sum A B
-- END

end hide
