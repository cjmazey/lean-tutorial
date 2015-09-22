import standard
definition compose (A B C : Type) (g : B → C) (f : A → B) (x : A) :
C := g (f x)

definition do_twice (A : Type) (h : A → A) (x : A) : A := h (h x)

definition do_thrice (A : Type) (h : A → A) (x : A) : A := h (h (h x))
