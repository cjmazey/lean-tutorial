import standard
-- pr2 is semireducible
definition pr2 (A : Type) (a b : A) : A := b

-- mark pr2 as reducible
attribute pr2 [reducible]
-- ...
-- make it semireducible again
attribute pr2 [semireducible]
