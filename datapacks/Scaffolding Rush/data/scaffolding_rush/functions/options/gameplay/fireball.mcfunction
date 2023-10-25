
execute store success score #player.item.fireball.enabled options if score #player.item.fireball.enabled options matches 0

execute if score #player.item.fireball.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.fireball_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #player.item.fireball.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.fireball_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_fireball 0
scoreboard players enable @s option_fireball

function scaffolding_rush:options/refresh
