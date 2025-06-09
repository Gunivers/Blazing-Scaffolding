execute if score #villager.invulnerable options matches 1 run execute as @e[type=villager,tag=game_villager] run data merge entity @s {CustomName:'{"text":""}',CustomNameVisible:0b}
execute if score #villager.invulnerable options matches 1 run return 0

execute as @e[type=villager,tag=game_villager] run data merge entity @s {CustomNameVisible:1b}

execute as @e[type=villager,tag=game_villager] store result score @s health run data get entity @s Health 1
execute as @e[type=villager,tag=game_villager] run data modify entity @s CustomNameVisible set value True

execute as @e[type=villager,tag=game_villager,scores={health=1},tag=red_villager] run data merge entity @s {CustomName:'[{"text":"♥","color":"dark_red"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=2},tag=red_villager] run data merge entity @s {CustomName:'[{"text":"❤","color":"dark_red"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=3},tag=red_villager] run data merge entity @s {CustomName:'[{"text":"❤♥","color":"dark_red"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=4},tag=red_villager] run data merge entity @s {CustomName:'[{"text":"❤❤","color":"dark_red"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=5},tag=red_villager] run data merge entity @s {CustomName:'[{"text":"❤❤♥","color":"dark_red"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=6},tag=red_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤","color":"dark_red"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=7},tag=red_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤♥","color":"dark_red"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=8},tag=red_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤❤","color":"dark_red"}]'}

execute as @e[type=villager,tag=game_villager,scores={health=1},tag=yellow_villager] run data merge entity @s {CustomName:'[{"text":"♥","color":"yellow"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=2},tag=yellow_villager] run data merge entity @s {CustomName:'[{"text":"❤","color":"yellow"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=3},tag=yellow_villager] run data merge entity @s {CustomName:'[{"text":"❤♥","color":"yellow"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=4},tag=yellow_villager] run data merge entity @s {CustomName:'[{"text":"❤❤","color":"yellow"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=5},tag=yellow_villager] run data merge entity @s {CustomName:'[{"text":"❤❤♥","color":"yellow"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=6},tag=yellow_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤","color":"yellow"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=7},tag=yellow_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤♥","color":"yellow"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=8},tag=yellow_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤❤","color":"yellow"}]'}

execute as @e[type=villager,tag=game_villager,scores={health=1},tag=blue_villager] run data merge entity @s {CustomName:'[{"text":"♥","color":"blue"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=2},tag=blue_villager] run data merge entity @s {CustomName:'[{"text":"❤","color":"blue"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=3},tag=blue_villager] run data merge entity @s {CustomName:'[{"text":"❤♥","color":"blue"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=4},tag=blue_villager] run data merge entity @s {CustomName:'[{"text":"❤❤","color":"blue"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=5},tag=blue_villager] run data merge entity @s {CustomName:'[{"text":"❤❤♥","color":"blue"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=6},tag=blue_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤","color":"blue"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=7},tag=blue_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤♥","color":"blue"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=8},tag=blue_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤❤","color":"blue"}]'}

execute as @e[type=villager,tag=game_villager,scores={health=1},tag=green_villager] run data merge entity @s {CustomName:'[{"text":"♥","color":"green"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=2},tag=green_villager] run data merge entity @s {CustomName:'[{"text":"❤","color":"green"},{"text":"♥♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=3},tag=green_villager] run data merge entity @s {CustomName:'[{"text":"❤♥","color":"green"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=4},tag=green_villager] run data merge entity @s {CustomName:'[{"text":"❤❤","color":"green"},{"text":"♥♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=5},tag=green_villager] run data merge entity @s {CustomName:'[{"text":"❤❤♥","color":"green"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=6},tag=green_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤","color":"green"},{"text":"♥","color":"gray"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=7},tag=green_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤♥","color":"green"}]'}
execute as @e[type=villager,tag=game_villager,scores={health=8},tag=green_villager] run data merge entity @s {CustomName:'[{"text":"❤❤❤❤","color":"green"}]'}