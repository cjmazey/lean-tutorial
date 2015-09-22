import standard
namespace hide
-- BEGIN
open nat

print definition nat.induction_on
print definition nat.cases_on

definition induction_on {C : nat → Prop} (n : nat)
(fz : C zero) (fs : Π a, C a → C (succ a)) : C n :=
nat.rec_on n fz fs

definition cases_on {C : nat → Prop} (n : nat)
(fz : C zero) (fs : Π a, C (succ a)) : C n :=
nat.rec_on n fz (fun (a : nat) (r : C a), fs a)
-- END
end hide
