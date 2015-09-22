import standard
import data.prod

namespace hide

inductive inhabited [class] (A : Type) : Type :=
mk : A → inhabited A

definition Prop.is_inhabited [instance] : inhabited Prop :=
inhabited.mk true

definition bool.is_inhabited [instance] : inhabited bool :=
inhabited.mk bool.tt

definition nat.is_inhabited [instance] : inhabited nat :=
inhabited.mk nat.zero

definition unit.is_inhabited [instance] : inhabited unit :=
inhabited.mk unit.star

definition default (A : Type) [H : inhabited A] : A :=
inhabited.rec (λ a, a) H

definition arbitrary [irreducible] (A : Type) [H : inhabited A] : A :=
inhabited.rec (λ a, a) H

-- BEGIN
definition prod.is_inhabited [instance] {A B : Type} [H1 : inhabited A]
[H2 : inhabited B] : inhabited (prod A B) :=
inhabited.mk ((default A, default B))
-- END
end hide
