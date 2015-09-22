import standard
open sigma nat

example (x y : nat) (H : (fun (a : nat), pr1 ⟨a, y⟩) x = 0) : x = 0 :=
begin
esimp at H,
exact H
end

example (x y : nat) (H : x = 0) : (fun (a : nat), pr1 ⟨a, y⟩) x = 0 :=
begin
esimp,
exact H
end
