import standard
namespace hide

-- BEGIN
inductive inhabited [class] (A : Type) : Type :=
mk : A → inhabited A
-- END

end hide
