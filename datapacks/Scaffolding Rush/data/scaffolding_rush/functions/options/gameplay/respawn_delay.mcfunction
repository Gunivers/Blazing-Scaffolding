
scoreboard players operation #respawn.delay.second options = @s opt_resp_delay

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The delay for respawn has been set to ","color":"gray"},{"score":{"name":"#respawn.delay.second","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le temps de réapparition a été mis à ","color":"gray"},{"score":{"name":"#respawn.delay.second","objective":"options"},"color":"gold"},{"text":" secondes","color":"gold"}]

scoreboard players set @s opt_resp_delay 0
scoreboard players enable @s opt_resp_delay

function scaffolding_rush:options/refresh
