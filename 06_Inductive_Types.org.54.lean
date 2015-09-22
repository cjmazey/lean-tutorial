import standard
open nat

theorem succ_ne_zero (a : nat) (h : succ a = zero) : false :=
nat.no_confusion h

theorem succ.inj (a b : nat) (h : succ a = succ b) : a = b :=
nat.no_confusion h (fun e : a = b, e)

inductive tree (A : Type) : Type :=
| leaf : A → tree A
| node : tree A → tree A → tree A

open tree

variable {A : Type}

theorem leaf_ne_node {a : A} {l r : tree A}
(h : leaf a = node l r) : false :=
sorry

theorem leaf_inj {a b : A} (h : leaf a = leaf b) : a = b :=
sorry

theorem node_inj_left {l1 r1 l2 r2 : tree A}
(h : node l1 r1 = node l2 r2) : l1 = l2 :=
sorry

theorem node_inj_right {l1 r1 l2 r2 : tree A}
(h : node l1 r1 = node l2 r2) : r1 = r2 :=
sorry
