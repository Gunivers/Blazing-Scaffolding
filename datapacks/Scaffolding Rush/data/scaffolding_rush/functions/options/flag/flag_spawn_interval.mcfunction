
scoreboard players operation FlagTakeOverSpawnInterval options = @s opt_flag_spawn_interval

tellraw @s[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The flag spawn interval has been set to ","color":"gray"},{"score":{"name":"FlagTakeOverSpawnInterval","objective":"options"},"color":"gold"}]
tellraw @s[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Le temps d'apparition des drapeaux a été mis à ","color":"gray"},{"score":{"name":"FlagTakeOverSpawnInterval","objective":"options"},"color":"gold"}]

scoreboard players set @s opt_flag_spawn_interval 0
scoreboard players enable @s opt_flag_spawn_interval

function scaffolding_rush:options/refresh
