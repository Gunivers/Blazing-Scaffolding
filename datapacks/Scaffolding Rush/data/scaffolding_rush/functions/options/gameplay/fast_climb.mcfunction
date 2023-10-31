
#generated option function

execute store success score #gameplay.fast_climb.enabled options if score #gameplay.fast_climb.enabled options matches 0

execute if score #gameplay.fast_climb.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.fast_climb_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #gameplay.fast_climb.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.fast_climb_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_fast_climb 0
scoreboard players enable @s option_fast_climb

function scaffolding_rush:options/refresh
