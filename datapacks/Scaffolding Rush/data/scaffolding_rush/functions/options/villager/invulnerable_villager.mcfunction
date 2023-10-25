
#generated option function

execute store success score #villager.invulnerable options if score #villager.invulnerable options matches 0

execute if score #villager.invulnerable options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_invincibility_of_the_villager_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #villager.invulnerable options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_villager_is","color":"gray"},{"translate":"blazing_scaffolding.invincible","color":"green"}]

scoreboard players set @s option_invulnerable_villager 0
scoreboard players enable @s option_invulnerable_villager

function scaffolding_rush:options/refresh
