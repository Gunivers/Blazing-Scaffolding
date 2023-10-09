execute as @s[tag=InGame] at @s run function scaffolding_rush:lobby/tp_to_lobby
execute as @s[tag=inTutorial] at @s run function scaffolding_rush:lobby/tp_to_lobby

gamemode adventure

execute if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/give

execute if score #admin.exist options matches 1 as @a[tag=admin] run function scaffolding_rush:options/activate_all
execute if score #admin.exist options matches 0 as @a run function scaffolding_rush:options/activate_all

scoreboard players enable @s option.admin
scoreboard players enable @s trigger.tutorial

bossbar set reset_lobby_en players @s[scores={option.language=0}]
bossbar set reset_lobby_fr players @a[scores={option.language=1}]

bossbar set reset_map_en players @s[scores={option.language=0}]
bossbar set reset_map_fr players @a[scores={option.language=1}]
