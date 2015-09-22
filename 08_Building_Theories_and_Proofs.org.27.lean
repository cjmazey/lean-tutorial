import standard
import data.int
open int eq.ops

section mod_m
parameter (m : ℤ)
variables (a b c : ℤ)

definition mod_equiv := (m ∣ b - a)

local infix ≡ := mod_equiv

theorem mod_refl : a ≡ a :=
show m ∣ a - a, from (sub_self a)⁻¹ ▸ !dvd_zero

theorem mod_symm (H : a ≡ b) : b ≡ a :=
have H1 : (m ∣ -(b - a)), from iff.mpr !dvd_neg_iff_dvd H,
int.neg_sub b a ▸ H1

theorem mod_trans (H1 : a ≡ b) (H2 : b ≡ c) : a ≡ c :=
have H1 : (m ∣ (c - b) + (b - a)), from !dvd_add H2 H1,
eq.subst
(calc
(c - b) + (b - a) = c - b + b - a  : add.assoc
... = c + -b + b - a : rfl
... = c - a          : neg_add_cancel_right)
H1
end mod_m

check mod_refl
-- ∀ (m a : ℤ), mod_equiv m a a

check mod_symm
-- ∀ (m a b : ℤ), mod_equiv m a b → mod_equiv m b a

check mod_trans
-- ∀ (m a b c : ℤ), mod_equiv m a b → mod_equiv m b c → mod_equiv m a c
