# Execute as & at the player
# Called by functions scaffolding_rush:player/death/<type>/start

tag @s add player.is_dead

# Drop the flag
summon marker ~ ~ ~ {Tags:["last_death"]}
execute store result entity @e[type=marker,tag=last_death,limit=1] Pos[0] double 1.0 run scoreboard players get @s pos.x
execute store result entity @e[type=marker,tag=last_death,limit=1] Pos[1] double 1.0 run scoreboard players get @s pos.y
execute store result entity @e[type=marker,tag=last_death,limit=1] Pos[2] double 1.0 run scoreboard players get @s pos.z
execute unless score #flag.take_over options matches 0 if entity @s[tag=flag_carry] positioned as @e[type=marker,tag=last_death,limit=1] run function scaffolding_rush:game/flag/drop/any
kill @e[type=marker,tag=last_death]

effect clear @s
clear @s
tag @s remove player.item.can_have_items