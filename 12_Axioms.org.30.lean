import standard
namespace hide
open option
-- BEGIN
structure encodable [class] (A : Type) :=
(encode : A → nat) (decode : nat → option A) (encodek : ∀ a, decode (encode a) = some a)
-- END

end hide
