import standard
namespace hide
-- BEGIN
structure prod.{u} (A : Type.{u}) (B : Type.{u}) : Type.{max 1 u} :=
(pr1 : A) (pr2 : B)

set_option pp.universes true
check prod.mk
-- END
end hide
