
#generated option function

execute store success score #villager.movable options if score #villager.movable options matches 0

execute if score #villager.movable options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_villager_is","color":"gray"},{"translate":"blazing_scaffolding.immobile","color":"red"}]
execute unless score #villager.movable options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_villager_is","color":"gray"},{"translate":"blazing_scaffolding.moveable","color":"green"}]

scoreboard players set @s option_movable_villager 0
scoreboard players enable @s option_movable_villager

function scaffolding_rush:options/refresh
