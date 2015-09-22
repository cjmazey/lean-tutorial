import standard
import standard

section
parameters {A : Type} (R : A → A → Type)
hypothesis transR : ∀ {x y z}, R x y → R y z → R x z

variables {a b c d e : A}

theorem t1 (H1 : R a b) (H2 : R b c) (H3 : R c d) : R a d :=
transR (transR H1 H2) H3

theorem t2 (H1 : R a b) (H2 : R b c) (H3 : R c d) (H4 : R d e) :
R a e :=
transR H1 (t1 H2 H3 H4)

check t1
check t2
end

check t1
check t2
