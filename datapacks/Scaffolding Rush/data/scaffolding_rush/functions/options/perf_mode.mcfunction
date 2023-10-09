
execute store success score #performance_mode options if score #performance_mode options matches 0

execute if score #performance_mode options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The perfomance mode has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #performance_mode options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The perfomance mode has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #performance_mode options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le mode de performance a été ","color":"gray"},{"text":"désactivé","color":"red"}]
execute unless score #performance_mode options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le mode de performance a été ","color":"gray"},{"text":"activé","color":"green"}]

scoreboard players set @s option.perf_mode 0
scoreboard players enable @s option.perf_mode

function scaffolding_rush:options/refresh
