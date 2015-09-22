import standard
namespace hide

constant implies : Prop → Prop → Prop
constant Proof : Prop → Type

-- BEGIN
constant implies_intro (p q : Prop) : (Proof p → Proof q) → Proof (implies p q).
-- END

end hide
