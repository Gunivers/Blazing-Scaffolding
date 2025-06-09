
scoreboard players operation VolcanoPopPeriod options = @s option_volcano_pop_period

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_interval_between_volcano_projectiles_has_been_set_to","color":"gray"},{"score":{"name":"VolcanoPopPeriod","objective":"options"},"color":"gold"},{"translate":"blazing_scaffolding.ticks","color":"gray"}]

scoreboard players set @s option_volcano_pop_period 0
scoreboard players enable @s option_volcano_pop_period

function scaffolding_rush:options/refresh
