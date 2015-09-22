import standard
inductive weekday : Type :=
| sunday : weekday
| monday : weekday
| tuesday : weekday
| wednesday : weekday
| thursday : weekday
| friday : weekday
| saturday : weekday

-- BEGIN
check weekday.sunday
check weekday.monday

open weekday

check sunday
check monday
-- END
