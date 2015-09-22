import standard
import data.prod
open prod prod.ops quot

private definition eqv {A : Type} (p₁ p₂ : A × A) : Prop :=
(p₁.1 = p₂.1 ∧ p₁.2 = p₂.2) ∨ (p₁.1 = p₂.2 ∧ p₁.2 = p₂.1)

infix `~` := eqv

open eq or

local notation `⟨` H₁ `,` H₂ `⟩` := and.intro H₁ H₂

private theorem eqv.refl {A : Type} : ∀ p : A × A, p ~ p :=
take p, inl ⟨rfl, rfl⟩

private theorem eqv.symm {A : Type} : ∀ p₁ p₂ : A × A, p₁ ~ p₂ → p₂ ~ p₁
| (a₁, a₂) (b₁, b₂) (inl ⟨a₁b₁, a₂b₂⟩) := inl ⟨symm a₁b₁, symm a₂b₂⟩
| (a₁, a₂) (b₁, b₂) (inr ⟨a₁b₂, a₂b₁⟩) := inr ⟨symm a₂b₁, symm a₁b₂⟩

private theorem eqv.trans {A : Type} : ∀ p₁ p₂ p₃ : A × A, p₁ ~ p₂ → p₂ ~ p₃ → p₁ ~ p₃
| (a₁, a₂) (b₁, b₂) (c₁, c₂) (inl ⟨a₁b₁, a₂b₂⟩) (inl ⟨b₁c₁, b₂c₂⟩) :=
inl ⟨trans a₁b₁ b₁c₁, trans a₂b₂ b₂c₂⟩
| (a₁, a₂) (b₁, b₂) (c₁, c₂) (inl ⟨a₁b₁, a₂b₂⟩) (inr ⟨b₁c₂, b₂c₁⟩) :=
inr ⟨trans a₁b₁ b₁c₂, trans a₂b₂ b₂c₁⟩
| (a₁, a₂) (b₁, b₂) (c₁, c₂) (inr ⟨a₁b₂, a₂b₁⟩) (inl ⟨b₁c₁, b₂c₂⟩) :=
inr ⟨trans a₁b₂ b₂c₂, trans a₂b₁ b₁c₁⟩
| (a₁, a₂) (b₁, b₂) (c₁, c₂) (inr ⟨a₁b₂, a₂b₁⟩) (inr ⟨b₁c₂, b₂c₁⟩) :=
inl ⟨trans a₁b₂ b₂c₁, trans a₂b₁ b₁c₂⟩

private theorem is_equivalence (A : Type) : equivalence (@eqv A) :=
mk_equivalence (@eqv A) (@eqv.refl A) (@eqv.symm A) (@eqv.trans A)

definition uprod.setoid [instance] (A : Type) : setoid (A × A) :=
setoid.mk (@eqv A) (is_equivalence A)

definition uprod (A : Type) : Type :=
quot (uprod.setoid A)

namespace uprod
definition mk {A : Type} (a₁ a₂ : A) : uprod A :=
⟦(a₁, a₂)⟧

notation `{` a₁ `,` a₂ `}` := mk a₁ a₂

theorem mk_eq_mk {A : Type} (a₁ a₂ : A) : {a₁, a₂} = {a₂, a₁} :=
quot.sound (inr ⟨rfl, rfl⟩)

-- BEGIN
private definition mem_fn {A : Type} (a : A) : A × A → Prop
| (a₁, a₂) := a = a₁ ∨ a = a₂

-- auxiliary lemma for proving mem_respects
private lemma mem_swap {A : Type} {a : A} : ∀ {p : A × A}, mem_fn a p = mem_fn a (swap p)
| (a₁, a₂) := propext (iff.intro
(λ l : a = a₁ ∨ a = a₂, or.elim l (λ h₁, inr h₁) (λ h₂, inl h₂))
(λ r : a = a₂ ∨ a = a₁, or.elim r (λ h₁, inr h₁) (λ h₂, inl h₂)))

private lemma mem_respects {A : Type} : ∀ {p₁ p₂ : A × A} (a : A),  p₁ ~ p₂ → mem_fn a p₁ = mem_fn a p₂
| (a₁, a₂) (b₁, b₂) a (inl ⟨a₁b₁, a₂b₂⟩) :=
begin esimp at a₁b₁, esimp at a₂b₂, rewrite [a₁b₁, a₂b₂] end
| (a₁, a₂) (b₁, b₂) a (inr ⟨a₁b₂, a₂b₁⟩) :=
begin esimp at a₁b₂, esimp at a₂b₁, rewrite [a₁b₂, a₂b₁], apply mem_swap end

definition mem {A : Type} (a : A) (u : uprod A) : Prop :=
quot.lift_on u (λ p, mem_fn a p) (λ p₁ p₂ e, mem_respects a e)

infix `∈` := mem

theorem mem_mk_left {A : Type} (a b : A) : a ∈ {a, b} :=
inl rfl

theorem mem_mk_right {A : Type} (a b : A) : b ∈ {a, b} :=
inr rfl

theorem mem_or_mem_of_mem_mk {A : Type} {a b c : A} : c ∈ {a, b} → c = a ∨ c = b :=
λ h, h
-- END
end uprod
