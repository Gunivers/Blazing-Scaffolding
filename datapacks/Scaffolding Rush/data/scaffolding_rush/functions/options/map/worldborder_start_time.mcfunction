
#generated option function

scoreboard players operation #worldborder.start_time.second options = @s option_worldborder_start_time
execute if score @s option_worldborder_start_time matches ..-1 run scoreboard players operation #worldborder.start_time.second options = 0 const

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.worldborder_start_time","color":"gray"},{"score":{"name":"#worldborder.start_time.second","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s option_worldborder_start_time 0
scoreboard players enable @s option_worldborder_start_time

function scaffolding_rush:options/refresh
