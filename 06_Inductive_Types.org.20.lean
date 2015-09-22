import standard
namespace hide

-- BEGIN
inductive sigma {A : Type} (B : A → Type) :=
dpair : Π a : A, B a → sigma B
-- END

end hide
