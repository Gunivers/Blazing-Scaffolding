
scoreboard players operation VolcanoSummonPeriod options = @s option_volcano_summon_period

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_interval_between_volcano_spawns_has_been_set_to","color":"gray"},{"score":{"name":"VolcanoSummonPeriod","objective":"options"},"color":"gold"},{"translate":"blazing_scaffolding.ticks","color":"gray"}]

scoreboard players set @s option_volcano_summon_period 0
scoreboard players enable @s option_volcano_summon_period

function scaffolding_rush:options/refresh
