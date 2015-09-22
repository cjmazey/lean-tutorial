import standard
namespace hide
-- BEGIN
inductive list (A : Type) : Type :=
| nil {} : list A
| cons : A → list A → list A

namespace list

variable {A : Type}

notation h :: t  := cons h t

definition append (s t : list A) : list A :=
list.rec t (λ x l u, x::u) s

notation s ++ t := append s t

theorem nil_append (t : list A) : nil ++ t = t := rfl

theorem cons_append (x : A) (s t : list A) : x::s ++ t = x::(s ++ t) := rfl

end list
-- END
end hide
