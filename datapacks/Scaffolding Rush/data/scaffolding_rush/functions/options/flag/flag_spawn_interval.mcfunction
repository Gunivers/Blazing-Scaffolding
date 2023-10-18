
scoreboard players operation #flag.take_over.spawn_interval options = @s option_flag_spawn_interval

tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The flag spawn interval has been set to ","color":"gray"},{"score":{"name":"#flag.take_over.spawn_interval","objective":"options"},"color":"gold"}]
tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le temps d'apparition des drapeaux a été mis à ","color":"gray"},{"score":{"name":"#flag.take_over.spawn_interval","objective":"options"},"color":"gold"}]

scoreboard players set @s option_flag_spawn_interval 0
scoreboard players enable @s option_flag_spawn_interval

function scaffolding_rush:options/refresh
