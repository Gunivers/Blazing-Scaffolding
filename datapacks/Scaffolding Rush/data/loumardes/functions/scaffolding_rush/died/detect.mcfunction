#kill villager
execute if entity @s[type=minecraft:villager] run kill @s

gamemode spectator @s

execute if entity @s[team=red] unless entity @e[type=villager,team=red] run tag @s add Eliminated
execute if entity @s[team=blue] unless entity @e[type=villager,team=blue] run tag @s add Eliminated
execute if entity @s[team=yellow] unless entity @e[type=villager,team=yellow] run tag @s add Eliminated
execute if entity @s[team=green] unless entity @e[type=villager,team=green] run tag @s add Eliminated

tag @s remove has_egg
clear @s squid_spawn_egg
clear @s slime_spawn_egg
clear @s mooshroom_spawn_egg
clear @s blaze_spawn_egg

spawnpoint @s[tag=Eliminated] 0 ~ 0
tp @s[tag=Eliminated] 0 ~ 0

execute if entity @s[team=red,tag=!Eliminated] at @e[type=villager,team=red] run tp @s ~ ~ ~
execute if entity @s[team=blue,tag=!Eliminated] at @e[type=villager,team=blue] run tp @s ~ ~ ~
execute if entity @s[team=yellow,tag=!Eliminated] at @e[type=villager,team=yellow] run tp @s ~ ~ ~
execute if entity @s[team=green,tag=!Eliminated] at @e[type=villager,team=green] run tp @s ~ ~ ~

title @a times 0 20 0
title @s[tag=!Eliminated title ["",{"text":"Respawning...","color":"red"}]

scoreboard players set @s[tag=Eliminated] killed 0
scoreboard players set @s[tag=!Eliminated] killed 20
schedule function loumardes:scaffolding_rush/died/loop_tp 1t

#Recup delay
tag @s[tag=!Eliminated] add VillagerRecup
schedule function loumardes:scaffolding_rush/villager/give/recup_delay 2s

tag @s remove Eliminated
