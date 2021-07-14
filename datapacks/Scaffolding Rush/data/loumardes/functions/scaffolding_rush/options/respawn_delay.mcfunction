
scoreboard players operation RespawnDelay options = @s opt_respawn_delay

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The delay for respawn has been set to ","color":"gray"},{"score":{"name":"RespawnDelay","objective":"options"},"color":"gold"}]

scoreboard players set @a opt_respawn_delay 0
scoreboard players enable @a opt_respawn_delay

function loumardes:scaffolding_rush/options/refresh
