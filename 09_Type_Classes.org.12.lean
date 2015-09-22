import standard
namespace hide

-- BEGIN
inductive decidable [class] (p : Prop) : Type :=
| inl :  p → decidable p
| inr : ¬p → decidable p
-- END
end hide
