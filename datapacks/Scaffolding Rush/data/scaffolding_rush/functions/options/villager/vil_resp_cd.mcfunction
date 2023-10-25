
scoreboard players operation #villager.respawn.seconds options = @s option_vil_resp_cd

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.the_time_to_get_your_villager_back_has_been_set_to","color":"gray"},{"score":{"name":"#villager.respawn.seconds","objective":"options"},"color":"gold"},{"translate":"blazing_scaffolding.seconds","color":"gold"}]

scoreboard players set @s option_vil_resp_cd 0
scoreboard players enable @s option_vil_resp_cd

function scaffolding_rush:options/refresh
