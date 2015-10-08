/- page 89 -/

import standard
namespace hide

inductive list (A : Type) : Type :=
| nil {} : list A
| cons : A → list A → list A

namespace list

notation `[` l:(foldr `,` (h t, cons h t) nil) `]` := l

variable {A : Type}

notation h :: t  := cons h t

definition append (s t : list A) : list A :=
list.rec_on s t (λ x l u, x::u)

notation s ++ t := append s t

theorem nil_append (t : list A) : nil ++ t = t := rfl

theorem cons_append (x : A) (s t : list A) : x::s ++ t = x::(s ++ t) := rfl

-- BEGIN
theorem append_nil (t : list A) : t ++ nil = t :=
list.induction_on t rfl (λ x xs IH, eq.subst IH rfl)

theorem append_assoc (r s t : list A) : r ++ s ++ t = r ++ (s ++ t) :=
list.induction_on r
                  rfl
                  (λ x xs IH,
                     calc (x :: xs) ++ s ++ t = x :: (xs ++ s ++ t) : rfl
                                          ... = x :: (xs ++ (s ++ t)) : IH
                                          ... = (x :: xs) ++ (s ++ t) : rfl)
-- END

end list

end hide
