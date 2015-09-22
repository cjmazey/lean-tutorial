import standard
import data.nat data.prod
open nat prod

variables (A B : Type)

-- BEGIN
example (f : A → B) (a : A) : (λ x, f x) a = f a := rfl
example (a : A) (b : A) : pr1 (a, b) = a := rfl
example : 2 + 3 = 5 := rfl
-- END
