execute if entity @s[team=red] unless entity @e[type=villager,team=red] run gamemode spectator @s
execute if entity @s[team=blue] unless entity @e[type=villager,team=blue] run gamemode spectator @s
execute if entity @s[team=yellow] unless entity @e[type=villager,team=yellow] run gamemode spectator @s
execute if entity @s[team=green] unless entity @e[type=villager,team=green] run gamemode spectator @s

tag @s remove has_egg
clear @s squid_spawn_egg
clear @s slime_spawn_egg
clear @s mooshroom_spawn_egg
clear @s blaze_spawn_egg

spawnpoint @s[gamemode=spectator] 0 ~ 0
tp @s[gamemode=spectator] 0 ~ 0
kill @s[gamemode=!spectator]

scoreboard players set @s killed 0
