
execute store success score #gameplay.scaffolding_stop_arrow.enabled options if score #gameplay.scaffolding_stop_arrow.enabled options matches 0

execute if score #gameplay.scaffolding_stop_arrow.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.scaffolding_stop_arrow_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #gameplay.scaffolding_stop_arrow.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.scaffolding_stop_arrow_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_scaff_stops_arrow 0
scoreboard players enable @s option_scaff_stops_arrow

function scaffolding_rush:options/refresh
