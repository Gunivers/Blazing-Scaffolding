
scoreboard players operation #gameplay.respawn.delay.second options = @s option_resp_delay

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.respawn_delay","color":"gray"},{"score":{"name":"#gameplay.respawn.delay.second","objective":"options"},"color":"gold"},{"translate":"blazing_scaffolding.seconds","color":"gold"}]

scoreboard players set @s option_resp_delay 0
scoreboard players enable @s option_resp_delay

function scaffolding_rush:options/refresh
