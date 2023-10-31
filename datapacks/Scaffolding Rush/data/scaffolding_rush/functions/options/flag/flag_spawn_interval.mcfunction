
scoreboard players operation #flag.take_over.spawn_interval options = @s option_flag_spawn_interval

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.flag_spawn_interval_has_been","color":"gray"},{"score":{"name":"#flag.take_over.spawn_interval","objective":"options"},"color":"gold"}]

scoreboard players set @s option_flag_spawn_interval 0
scoreboard players enable @s option_flag_spawn_interval

function scaffolding_rush:options/refresh
