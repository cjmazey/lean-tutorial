import standard
import data.nat   -- imports the nat module

check nat.add
check nat.zero

open nat -- imports short identifiers, notations, etc. into the context

check add
check zero

constants m n : nat

check m + n
check 0
check m + 0
