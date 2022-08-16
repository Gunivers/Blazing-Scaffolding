
execute store success score PerformanceMode options if score PerformanceMode options matches 0

execute if score PerformanceMode options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The perfomance mode has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score PerformanceMode options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The perfomance mode has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score PerformanceMode options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Le mode de performance a été ","color":"gray"},{"text":"désactivé","color":"red"}]
execute unless score PerformanceMode options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Le mode de performance a été ","color":"gray"},{"text":"activé","color":"green"}]

scoreboard players set @s opt_perf_mode 0
scoreboard players enable @s opt_perf_mode

function scaffolding_rush:options/refresh
