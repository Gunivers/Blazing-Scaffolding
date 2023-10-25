
#generated option function

scoreboard players operation WorldborderTimeToShrink options = @s option_worldborder_time_to_shrink
execute if score @s option_worldborder_time_to_shrink matches ..-1 run scoreboard players operation WorldborderTimeToShrink options = 0 const

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.worldborder_time_to_shrink","color":"gray"},{"score":{"name":"WorldborderTimeToShrink","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s option_worldborder_time_to_shrink 0
scoreboard players enable @s option_worldborder_time_to_shrink

function scaffolding_rush:options/refresh
