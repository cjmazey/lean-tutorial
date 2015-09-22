import standard
definition id (A : Type) (a : A) : A := a
definition pr2 (A : Type) (a b : A) : A := b

-- mark pr2 as reducible
attribute pr2 [reducible]

-- mark id and pr2 as irreducible
attribute id [irreducible]
attribute pr2 [irreducible]
