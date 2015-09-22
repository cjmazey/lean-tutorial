import standard
namespace hide

constant implies : Prop → Prop → Prop
constant Proof : Prop → Type

-- BEGIN
constant modus_ponens (p q : Prop) : Proof (implies p q) →  Proof p → Proof q
-- END

end hide
