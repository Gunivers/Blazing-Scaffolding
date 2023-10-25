
execute store success score #gameplay.instant_pillar.enabled options if score #gameplay.instant_pillar.enabled options matches 0

execute if score #gameplay.instant_pillar.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.instant_pillar_has_been","color":"gray"},{"translate":"blazing_scaffolding.deactivated","color":"red"}]
execute unless score #gameplay.instant_pillar.enabled options matches 0 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.instant_pillar_has_been","color":"gray"},{"translate":"blazing_scaffolding.activated","color":"green"}]

scoreboard players set @s option_instant_pil 0
scoreboard players enable @s option_instant_pil

function scaffolding_rush:options/refresh
