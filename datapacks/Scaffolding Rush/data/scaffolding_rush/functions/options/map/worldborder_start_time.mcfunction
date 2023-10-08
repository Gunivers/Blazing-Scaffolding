
#generated option function

scoreboard players operation #worldborder.start_time.second options = @s opt_worldborder_start_time
execute if score @s opt_worldborder_start_time matches ..-1 run scoreboard players operation #worldborder.start_time.second options = 0 const

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The worldborder_start_time option has been set to ","color":"gray"},{"score":{"name":"#worldborder.start_time.second","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]



tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option worldborder_start_time a été mise à ","color":"gray"},{"score":{"name":"#worldborder.start_time.second","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s opt_worldborder_start_time 0
scoreboard players enable @s opt_worldborder_start_time

function scaffolding_rush:options/refresh
