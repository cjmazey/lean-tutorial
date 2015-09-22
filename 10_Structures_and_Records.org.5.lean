import standard
namespace hide
-- BEGIN
structure prod (A : Type) (B : Type) :=
(pr1 : A) (pr2 : B)

check prod.mk
-- END
end hide
