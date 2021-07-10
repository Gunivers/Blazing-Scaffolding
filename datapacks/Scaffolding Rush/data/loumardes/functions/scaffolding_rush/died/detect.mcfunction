#kill villager
execute if entity @s[type=minecraft:villager] run kill @s

execute if entity @s[team=red] unless entity @e[type=villager,team=red] run gamemode spectator @s
execute if entity @s[team=blue] unless entity @e[type=villager,team=blue] run gamemode spectator @s
execute if entity @s[team=yellow] unless entity @e[type=villager,team=yellow] run gamemode spectator @s
execute if entity @s[team=green] unless entity @e[type=villager,team=green] run gamemode spectator @s

#stop motion
tp @s @s

tag @s remove has_egg
clear @s squid_spawn_egg
clear @s slime_spawn_egg
clear @s mooshroom_spawn_egg
clear @s blaze_spawn_egg

spawnpoint @s[gamemode=spectator] 0 ~ 0
tp @s[gamemode=spectator] 0 ~ 0

execute if entity @s[team=red] at @e[type=villager,team=red] run tp @s ~ ~ ~
execute if entity @s[team=blue] at @e[type=villager,team=blue] run tp @s ~ ~ ~
execute if entity @s[team=yellow] at @e[type=villager,team=yellow] run tp @s ~ ~ ~
execute if entity @s[team=green] at @e[type=villager,team=green] run tp @s ~ ~ ~

effect give @s[gamemode=!spectator] minecraft:slowness 1 255 true
effect give @s[gamemode=!spectator] minecraft:weakness 1 255 true
effect give @s[gamemode=!spectator] minecraft:jump_boost 1 250 true
effect give @s[gamemode=!spectator] minecraft:levitation 1 200 true

title @a times 0 20 0
title @s[gamemode=!spectator] title ["",{"text":"Respawning...","color":"red"}]

scoreboard players set @s killed 0

#Recup delay
tag @s add VillagerRecup
execute at @s run schedule function loumardes:scaffolding_rush/villager/give/recup_delay 3s
