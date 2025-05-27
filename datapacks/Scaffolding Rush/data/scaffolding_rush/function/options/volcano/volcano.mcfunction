
execute store success score Volcano options if score Volcano options matches 0

execute if score Volcano options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_volcanoes_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score Volcano options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_volcanoes_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players reset @s option_volcano
scoreboard players enable @s option_volcano

function scaffolding_rush:options/refresh
