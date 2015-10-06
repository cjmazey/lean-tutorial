/- page 80 -/

import standard
import standard

namespace hide

-- BEGIN
inductive empty : Type

inductive unit : Type :=
star : unit

inductive bool : Type :=
| ff : bool
| tt : bool
-- END

/- introduction and elimination rules for these

     - empty

       - no introduction rule

       - the elimination rule lets us produce a value of anything from
         a value of type empty: -/

theorem empty_elim : ∀ A : Type, empty → A :=
  λ (A : Type) (e : empty),
    empty.cases_on (λ e, A) e

/-   - unit

       - one (always applicable) introduction rule (star)

       - no elimination rule

     - bool

       - two introduction rules (always applicable)

       - elimination rule provides "if / then / else"
-/

open hide.bool

definition band (b1 b2 : bool) : bool :=
  bool.cases_on b1 ff b2

definition bor (b1 b2 : bool) : bool :=
  bool.cases_on b1 b2 tt

definition bnot (b : bool) : bool :=
  bool.cases_on b tt ff

variables a b : bool

example : ff = (band ff ff) :=
  rfl

eval bnot (band ff ff)
eval bor (bnot ff) (bnot ff)

theorem demorgan1 : bnot (band a b) = bor (bnot a) (bnot b) :=
  bool.cases_on a (bool.cases_on b rfl rfl) (bool.cases_on b rfl rfl)

theorem demorgan2 : bnot (bor a b) = band (bnot a) (bnot b) :=
  bool.cases_on a (bool.cases_on b rfl rfl) (bool.cases_on b rfl rfl)

end hide
