
scoreboard players operation VolcanoTargetRate options = @s option_volcano_target_rate

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_lava_pop_target_rate_has_been_set_to_once_every","color":"gray"},{"score":{"name":"VolcanoTargetRate","objective":"options"},"color":"gold"},{"translate":"blazing_scaffolding.pops","color":"gray"}]

scoreboard players set @s option_volcano_target_rate 0
scoreboard players enable @s option_volcano_target_rate

function scaffolding_rush:options/refresh
