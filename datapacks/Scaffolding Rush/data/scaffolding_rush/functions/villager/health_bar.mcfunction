execute as @e[type=villager] store result score @s health run data get entity @s Health 1
execute as @e[type=villager] run data modify entity @s CustomNameVisible set value True

execute as @e[type=villager,scores={health=1},team=red] run data merge entity @s {CustomName:'[{"text":"♥","color":"dark_red"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=2},team=red] run data merge entity @s {CustomName:'[{"text":"❤","color":"dark_red"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=3},team=red] run data merge entity @s {CustomName:'[{"text":"❤♥","color":"dark_red"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=4},team=red] run data merge entity @s {CustomName:'[{"text":"❤❤","color":"dark_red"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=5},team=red] run data merge entity @s {CustomName:'[{"text":"❤❤♥","color":"dark_red"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=6},team=red] run data merge entity @s {CustomName:'[{"text":"❤❤❤","color":"dark_red"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=7},team=red] run data merge entity @s {CustomName:'[{"text":"❤❤❤♥","color":"dark_red"}]'}
execute as @e[type=villager,scores={health=8},team=red] run data merge entity @s {CustomName:'[{"text":"❤❤❤❤","color":"dark_red"}]'}

execute as @e[type=villager,scores={health=1},team=yellow] run data merge entity @s {CustomName:'[{"text":"♥","color":"yellow"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=2},team=yellow] run data merge entity @s {CustomName:'[{"text":"❤","color":"yellow"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=3},team=yellow] run data merge entity @s {CustomName:'[{"text":"❤♥","color":"yellow"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=4},team=yellow] run data merge entity @s {CustomName:'[{"text":"❤❤","color":"yellow"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=5},team=yellow] run data merge entity @s {CustomName:'[{"text":"❤❤♥","color":"yellow"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=6},team=yellow] run data merge entity @s {CustomName:'[{"text":"❤❤❤","color":"yellow"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=7},team=yellow] run data merge entity @s {CustomName:'[{"text":"❤❤❤♥","color":"yellow"}]'}
execute as @e[type=villager,scores={health=8},team=yellow] run data merge entity @s {CustomName:'[{"text":"❤❤❤❤","color":"yellow"}]'}

execute as @e[type=villager,scores={health=1},team=blue] run data merge entity @s {CustomName:'[{"text":"♥","color":"blue"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=2},team=blue] run data merge entity @s {CustomName:'[{"text":"❤","color":"blue"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=3},team=blue] run data merge entity @s {CustomName:'[{"text":"❤♥","color":"blue"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=4},team=blue] run data merge entity @s {CustomName:'[{"text":"❤❤","color":"blue"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=5},team=blue] run data merge entity @s {CustomName:'[{"text":"❤❤♥","color":"blue"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=6},team=blue] run data merge entity @s {CustomName:'[{"text":"❤❤❤","color":"blue"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=7},team=blue] run data merge entity @s {CustomName:'[{"text":"❤❤❤♥","color":"blue"}]'}
execute as @e[type=villager,scores={health=8},team=blue] run data merge entity @s {CustomName:'[{"text":"❤❤❤❤","color":"blue"}]'}

execute as @e[type=villager,scores={health=1},team=green] run data merge entity @s {CustomName:'[{"text":"♥","color":"green"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=2},team=green] run data merge entity @s {CustomName:'[{"text":"❤","color":"green"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=3},team=green] run data merge entity @s {CustomName:'[{"text":"❤♥","color":"green"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=4},team=green] run data merge entity @s {CustomName:'[{"text":"❤❤","color":"green"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=5},team=green] run data merge entity @s {CustomName:'[{"text":"❤❤♥","color":"green"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=6},team=green] run data merge entity @s {CustomName:'[{"text":"❤❤❤","color":"green"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,scores={health=7},team=green] run data merge entity @s {CustomName:'[{"text":"❤❤❤♥","color":"green"}]'}
execute as @e[type=villager,scores={health=8},team=green] run data merge entity @s {CustomName:'[{"text":"❤❤❤❤","color":"green"}]'}