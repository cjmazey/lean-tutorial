import standard
structure point (A : Type) :=
mk :: (x : A) (y : A)

-- BEGIN
check point              -- a Type
check point.rec_on       -- the recursor
check point.induction_on -- then recursor to Prop
check point.destruct     -- an alias for point.rec_on
check point.x            -- a projection / field accessor
check point.y            -- a projection / field accessor
-- END
