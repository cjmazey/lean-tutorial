import standard
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

-- BEGIN
check default Prop    -- Prop
check default nat     -- ℕ
check default bool    -- bool
check default unit    -- unit
-- END
end hide
