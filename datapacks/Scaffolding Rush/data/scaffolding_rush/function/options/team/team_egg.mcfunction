execute store success score TeamEgg options if score TeamEgg options matches 0

execute if score TeamEgg options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.team_placement_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score TeamEgg options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.team_placement_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_team_egg 0
scoreboard players enable @s option_team_egg

function scaffolding_rush:options/refresh
