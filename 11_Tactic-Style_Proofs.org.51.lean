import standard
import data.list
open list
variable {A : Type}

theorem append_assoc : ∀ (s t u : list A), s ++ t ++ u = s ++ (t ++ u)
| append_assoc nil t u      := by apply rfl
| append_assoc (a :: l) t u :=
begin
rewrite ▸ a :: (l ++ t ++ u) = _,
rewrite append_assoc
end
