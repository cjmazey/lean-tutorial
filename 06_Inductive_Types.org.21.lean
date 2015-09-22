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
