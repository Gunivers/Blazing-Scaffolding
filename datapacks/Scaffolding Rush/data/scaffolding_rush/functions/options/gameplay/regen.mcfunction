
execute store success score #gameplay.regeneration.enabled options if score #gameplay.regeneration.enabled options matches 0

execute if score #gameplay.regeneration.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.regeneration_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #gameplay.regeneration.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.regeneration_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_regen 0
scoreboard players enable @s option_regen
function scaffolding_rush:options/refresh
