#kill villager
execute if entity @s[type=minecraft:villager] run kill @s

execute if entity @s[team=red] unless entity @e[type=villager,team=red] run gamemode spectator @s
execute if entity @s[team=blue] unless entity @e[type=villager,team=blue] run gamemode spectator @s
execute if entity @s[team=yellow] unless entity @e[type=villager,team=yellow] run gamemode spectator @s
execute if entity @s[team=green] unless entity @e[type=villager,team=green] run gamemode spectator @s

tag @s remove has_egg
clear @s squid_spawn_egg
clear @s slime_spawn_egg
clear @s mooshroom_spawn_egg
clear @s blaze_spawn_egg

tp @s[gamemode=spectator] 0 ~ 0
tag @s[gamemode=!spectator] add Respawning

execute if entity @s[team=red,gamemode=!spectator] at @e[type=villager,team=red] run tp @s ~ ~ ~
execute if entity @s[team=blue,gamemode=!spectator] at @e[type=villager,team=blue] run tp @s ~ ~ ~
execute if entity @s[team=yellow,gamemode=!spectator] at @e[type=villager,team=yellow] run tp @s ~ ~ ~
execute if entity @s[team=green,gamemode=!spectator] at @e[type=villager,team=green] run tp @s ~ ~ ~

title @a times 0 20 0
title @s[gamemode=!spectator] title ["",{"text":"Respawning...","color":"red"}]

scoreboard players set @s[gamemode=spectator] killed 0
scoreboard players set @s[gamemode=!spectator] killed 20
schedule function loumardes:scaffolding_rush/died/loop_tp 1t

#Recup delay
tag @s[gamemode=!spectator] add VillagerRecup
schedule function loumardes:scaffolding_rush/villager/give/recup_delay 2s
