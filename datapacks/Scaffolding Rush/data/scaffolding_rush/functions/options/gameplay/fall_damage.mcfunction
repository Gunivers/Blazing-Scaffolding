
execute store success score #gameplay.fall_damage.enabled options if score #gameplay.fall_damage.enabled options matches 0

execute if score #gameplay.fall_damage.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.fall_damage_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #gameplay.fall_damage.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.fall_damage_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

execute if score #gameplay.fall_damage.enabled options matches 0 run gamerule fallDamage false
execute unless score #gameplay.fall_damage.enabled options matches 0 run gamerule fallDamage true

scoreboard players set @s option_fall_damage 0
scoreboard players enable @s option_fall_damage

function scaffolding_rush:options/refresh
