execute if entity @s[team=red,gamemode=!spectator] at @e[type=villager,team=red] run tp @s ~ ~ ~
execute if entity @s[team=blue,gamemode=!spectator] at @e[type=villager,team=blue] run tp @s ~ ~ ~
execute if entity @s[team=yellow,gamemode=!spectator] at @e[type=villager,team=yellow] run tp @s ~ ~ ~
execute if entity @s[team=green,gamemode=!spectator] at @e[type=villager,team=green] run tp @s ~ ~ ~
scoreboard players remove @s killed 1
execute as @a[scores={killed=1..}] run schedule function loumardes:scaffolding_rush/died/loop_tp 1t
execute as @a[scores={killed=0},tag=Respawning] run loumardes:scaffolding_rush/died/loop_end
