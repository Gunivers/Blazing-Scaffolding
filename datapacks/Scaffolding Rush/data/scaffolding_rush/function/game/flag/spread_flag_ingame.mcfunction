execute store result score CurrentWBSize data run worldborder get

execute positioned 0 0 0 if score CurrentWBSize data matches ..15 run spreadplayers 1000 1000 3 5 false @e[type=armor_stand,tag=spread]
execute positioned 0 0 0 if score CurrentWBSize data matches 15..19 run spreadplayers 1000 1000 5 7 false @e[type=armor_stand,tag=spread]
execute positioned 0 0 0 if score CurrentWBSize data matches 20..34 run spreadplayers 1000 1000 7 10 false @e[type=armor_stand,tag=spread]
execute positioned 0 0 0 if score CurrentWBSize data matches 35..79 run spreadplayers 1000 1000 14 17 false @e[type=armor_stand,tag=spread]
execute positioned 0 0 0 if score CurrentWBSize data matches 80..119 run spreadplayers 1000 1000 35 40 false @e[type=armor_stand,tag=spread]
execute positioned 0 0 0 if score CurrentWBSize data matches 120..165 run spreadplayers 1000 1000 55 60 false @e[type=armor_stand,tag=spread]

execute as @e[type=marker,name="lava.level",limit=1] at @s run function glib.location:get_y
scoreboard players operation @e[type=armor_stand,tag=spread] glib.locY = @e[type=marker,name="lava.level",limit=1] glib.locY
execute as @e[type=armor_stand,tag=spread] at @s run function glib.location:set_y

tag @e[type=armor_stand,tag=spread] remove spread

#respread 5 points flags that spawns too close to a team's villager (flagFive)
execute if score CurrentWBSize data matches ..15 as @e[type=armor_stand,tag=new,tag=flagFive] at @s if entity @e[type=villager,tag=respawn_villager,distance=..3] run tag @s add spread
execute if score CurrentWBSize data matches 15..19 as @e[type=armor_stand,tag=new,tag=flagFive] at @s if entity @e[type=villager,tag=respawn_villager,distance=..4] run tag @s add spread
execute if score CurrentWBSize data matches 20..34 as @e[type=armor_stand,tag=new,tag=flagFive] at @s if entity @e[type=villager,tag=respawn_villager,distance=..7] run tag @s add spread
execute if score CurrentWBSize data matches 35..79 as @e[type=armor_stand,tag=new,tag=flagFive] at @s if entity @e[type=villager,tag=respawn_villager,distance=..16] run tag @s add spread
execute if score CurrentWBSize data matches 80..119 as @e[type=armor_stand,tag=new,tag=flagFive] at @s if entity @e[type=villager,tag=respawn_villager,distance=..24] run tag @s add spread
execute if score CurrentWBSize data matches 120..165 as @e[type=armor_stand,tag=new,tag=flagFive] at @s if entity @e[type=villager,tag=respawn_villager,distance=..45] run tag @s add spread

execute if entity @e[type=armor_stand,tag=spread,limit=1] run function scaffolding_rush:game/flag/spread_flag_ingame
