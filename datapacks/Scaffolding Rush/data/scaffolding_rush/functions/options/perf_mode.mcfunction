
execute store success score #performance_mode options if score #performance_mode options matches 0

execute if score #performance_mode options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_perfomance_mode_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #performance_mode options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_perfomance_mode_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_perf_mode 0
scoreboard players enable @s option_perf_mode

function scaffolding_rush:options/refresh
