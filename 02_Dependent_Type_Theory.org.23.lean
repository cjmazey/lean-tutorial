/- page 22 -/

import standard
variables (A B C : Type)

definition compose (g : B → C) (f : A → B) (x : A) : C := g (f x)
definition do_twice (h : A → A) (x : A) : A := h (h x)
definition do_thrice (h : A → A) (x : A) : A := h (h (h x))
