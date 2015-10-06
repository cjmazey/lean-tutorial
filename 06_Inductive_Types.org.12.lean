/- page 81 -/

import standard
namespace hide

-- BEGIN
inductive prod (A B : Type) :=
mk : A → B → prod A B

inductive sum (A B : Type) : Type :=
| inl {} : A → sum A B
| inr {} : B → sum A B
-- END

end hide
