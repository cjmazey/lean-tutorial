import standard
import algebra.group
open algebra

variables {A : Type} [s : group A]
include s

theorem inv_eq_of_mul_eq_one {a b : A} (H : a * b = 1) : a⁻¹ = b :=
by rewrite [-(mul_one a⁻¹), -H, inv_mul_cancel_left]
