
execute store success score #player.item.bumping_arrow.enabled options if score #player.item.bumping_arrow.enabled options matches 0

execute if score #player.item.bumping_arrow.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.bumping_arrow_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #player.item.bumping_arrow.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.bumping_arrow_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_bumping_arrow 0
scoreboard players enable @s option_bumping_arrow

function scaffolding_rush:options/refresh
