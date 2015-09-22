import standard
namespace hide
constant list : Type → Type

namespace list
constant cons : Π A : Type, A → list A → list A -- type the product as "\Pi"
constant nil : Π A : Type, list A            -- the empty list
constant head : Π A : Type, list A → A       -- returns the first element
constant tail : Π A : Type, list A → list A  -- returns the remainder
constant append : Π A : Type, list A → list A → list A -- concatenates two lists
end list
end hide
