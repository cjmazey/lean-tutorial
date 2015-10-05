/- page 75 -/

import standard
import data.nat data.int
open nat int

check 2 + 2
eval 2 + 2

check #nat 2 + 2
eval #nat 2 + 2

check #int 2 + 2
eval #int 2 + 2

check nat.add 2 2
eval nat.add 2 2

check int.add 2 2
eval int.add 2 2

check (2 + 2 : nat)
eval (2 + 2 : nat)

check (2 + 2 : int)
eval (2 + 2 : int)

check 0

check nat.zero

check (0 : nat)
check (0 : int)
