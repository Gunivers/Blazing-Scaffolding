
scoreboard players operation RespawnDelay options = @s opt_resp_delay

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The delay for respawn has been set to ","color":"gray"},{"score":{"name":"RespawnDelay","objective":"options"},"color":"gold"}]

scoreboard players set @a opt_resp_delay 0
scoreboard players enable @a opt_resp_delay

function scaffolding_rush:scaffolding_rush/options/refresh
