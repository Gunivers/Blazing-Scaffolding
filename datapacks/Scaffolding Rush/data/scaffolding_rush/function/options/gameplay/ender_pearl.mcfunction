
execute store success score #player.item.ender_pearl.enabled options if score #player.item.ender_pearl.enabled options matches 0

execute if score #player.item.ender_pearl.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.ender_pearl_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #player.item.ender_pearl.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.ender_pearl_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_ender_pearl 0
scoreboard players enable @s option_ender_pearl

function scaffolding_rush:options/refresh
