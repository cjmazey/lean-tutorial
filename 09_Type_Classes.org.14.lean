import standard
namespace hide

-- BEGIN
definition dite (c : Prop) [H : decidable c] {A : Type} (t : c → A) (e : ¬ c → A) : A :=
decidable.rec_on H (λ Hc : c, t Hc) (λ Hnc : ¬ c, e Hnc)
-- END
end hide
