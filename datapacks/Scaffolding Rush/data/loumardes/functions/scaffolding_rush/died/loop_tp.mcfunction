execute as @a[scores={killed=1..}] if entity @s[team=red,gamemode=!spectator] at @e[type=villager,team=red] run tp @s ~ ~ ~
execute as @a[scores={killed=1..}] if entity @s[team=blue,gamemode=!spectator] at @e[type=villager,team=blue] run tp @s ~ ~ ~
execute as @a[scores={killed=1..}] if entity @s[team=yellow,gamemode=!spectator] at @e[type=villager,team=yellow] run tp @s ~ ~ ~
execute as @a[scores={killed=1..}] if entity @s[team=green,gamemode=!spectator] at @e[type=villager,team=green] run tp @s ~ ~ ~
execute as @a[scores={killed=1..}] run scoreboard players remove @s killed 1
execute as @a[scores={killed=1..}] run schedule function loumardes:scaffolding_rush/died/loop_tp 1t
execute as @a[scores={killed=0}] run gamemode survival @s
execute as @a[scores={killed=0}] run function loumardes:scaffolding_rush/team/create_base/armor
execute as @a[scores={killed=0}] run tag @s remove Respawning
