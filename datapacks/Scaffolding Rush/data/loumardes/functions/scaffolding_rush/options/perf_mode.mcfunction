
execute store success score PerformanceMode options if score PerformanceMode options matches 0

execute if score PerformanceMode options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The perfomance mode has been "},{"text":"desactivate","color":"red"}]
execute unless score PerformanceMode options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The perfomance mode has been "},{"text":"activate","color":"green"}]

scoreboard players set @a opt_perf_mode 0
scoreboard players enable @a opt_perf_mode

function loumardes:scaffolding_rush/options/refresh
