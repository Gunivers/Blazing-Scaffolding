
scoreboard players operation #gameplay.respawn.delay.second options = @s option.resp_delay

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The delay for respawn has been set to ","color":"gray"},{"score":{"name":"#gameplay.respawn.delay.second","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le temps de réapparition a été mis à ","color":"gray"},{"score":{"name":"#gameplay.respawn.delay.second","objective":"options"},"color":"gold"},{"text":" secondes","color":"gold"}]

scoreboard players set @s option.resp_delay 0
scoreboard players enable @s option.resp_delay

function scaffolding_rush:options/refresh
