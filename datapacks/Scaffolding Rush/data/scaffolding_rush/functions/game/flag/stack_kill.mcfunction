
#kill all entities riding on top of each other in the void (hide the death animation)
execute on passengers run function scaffolding_rush:game/flag/stack_kill
tp @s ~ ~-500 ~
data merge entity @s[type=slime] {Size:0}
kill @s