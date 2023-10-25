
execute store success score #villager.can_respawn options if score #villager.can_respawn options matches 0

execute if score #villager.can_respawn options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_villager","color":"gray"},{"translate":"blazing_scaffolding.can_t_respawn","color":"red"}]
execute unless score #villager.can_respawn options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_villager","color":"gray"},{"translate":"blazing_scaffolding.can_respawn","color":"green"}]

scoreboard players set @s option_vil_respawn 0
scoreboard players enable @s option_vil_respawn

function scaffolding_rush:options/refresh
