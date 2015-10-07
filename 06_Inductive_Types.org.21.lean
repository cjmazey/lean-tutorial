/- page 83 -/

import standard
namespace hide

-- BEGIN
inductive option (A : Type) : Type :=
| none {} : option A
| some    : A → option A

inductive inhabited (A : Type) : Type :=
mk : A → inhabited A
-- END

end hide

print option

definition optionCompose {A B C : Type}
                         (g : B → option C)
                         (f : A → option B) : A → option C :=
  λ a, option.rec_on (f a) option.none (λ b, g b)

open nat

eval (optionCompose (λ b, option.some (1 + b)) (λ a, option.some (2 * a))) 3
eval (optionCompose (λ b, option.none) (λ a, option.some (2 * a))) 3
eval (optionCompose (λ b, option.some (1 + b)) (λ a, option.none)) 3
eval (optionCompose (λ b, option.none) (λ a, option.none)) 3

example : inhabited bool :=
  inhabited.mk bool.ff

example : inhabited nat :=
  inhabited.mk zero

example {A B : Type} : inhabited A → inhabited B → inhabited (A × B) :=
  λ ia ib,
    inhabited.rec_on ia
                     (λ a,
                        inhabited.rec_on ib
                                         (λ b,
                                            inhabited.mk (a, b)))

example {A B : Type} : inhabited B → inhabited (A → B) :=
  λ ib, inhabited.rec_on ib (λ b, inhabited.mk (λ a, b))
