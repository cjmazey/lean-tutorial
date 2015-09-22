import standard
import data.nat data.prod
open nat prod

variables (A B : Type)

example (f : A → B) (a : A) : (λ x, f x) a = f a := eq.refl _
example (a : A) (b : A) : pr1 (a, b) = a := eq.refl _
example : 2 + 3 = 5 := eq.refl _
