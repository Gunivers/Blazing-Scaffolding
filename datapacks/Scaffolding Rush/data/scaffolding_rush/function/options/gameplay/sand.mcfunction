
execute store success score #player.item.sand.enabled options if score #player.item.sand.enabled options matches 0

execute if score #player.item.sand.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.sand_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #player.item.sand.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.sand_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

execute if score #player.item.sand.enabled options matches 0 run scoreboard players set @a[tag=player.item.can_have_items] player.item.sand.count 0
execute if score #player.item.sand.enabled options matches 1 run scoreboard players set @a[tag=player.item.can_have_items] player.item.sand.count 42

scoreboard players set @s option_sand 0
scoreboard players enable @s option_sand

function scaffolding_rush:options/refresh
