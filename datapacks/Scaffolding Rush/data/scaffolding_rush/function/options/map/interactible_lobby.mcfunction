
execute store success score #map.indestructible_lobby options if score #map.indestructible_lobby options matches 0

execute if score #map.indestructible_lobby options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.indestructible_lobby","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute if score #map.indestructible_lobby options matches 0 run tellraw @a {"translate":"blazing_scaffolding.indestructible_lobby_can_t","color":"gray"}
execute unless score #map.indestructible_lobby options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.indestructible_lobby","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]
execute unless score #map.indestructible_lobby options matches 0 run tellraw @a ["",{"translate":"blazing_scaffolding.indestructible_try","color":"gold"},{"translate":"blazing_scaffolding.indestructible_lobby_can","color":"gray"}]

scoreboard players set @s option_interactible_lobby 0
scoreboard players enable @s option_interactible_lobby

function scaffolding_rush:options/refresh