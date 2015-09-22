import standard
namespace hide

-- BEGIN
definition ite (c : Prop) [H : decidable c] {A : Type} (t e : A) : A :=
decidable.rec_on H (λ Hc, t) (λ Hnc, e)
-- END
end hide
