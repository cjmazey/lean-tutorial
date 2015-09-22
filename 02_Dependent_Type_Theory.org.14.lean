import standard
import data.nat data.prod data.bool
open nat prod bool

constants m n : nat
constant b : bool

print "reducing pairs"
eval pr1 (pair m n)  -- m
eval pr2 (pair m n)  -- n

print "reducing boolean expressions"
eval tt && ff        -- ff
eval b && ff         -- ff

print "reducing arithmetic expressions"
eval n + 0           -- n
eval n + 2           -- succ (succ n)
eval 2 + 3           -- 5
