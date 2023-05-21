
#generated option function

scoreboard players operation WorldborderTimeToShrink options = @s opt_worldborder_time_to_shrink
execute if score @s opt_worldborder_time_to_shrink matches ..-1 run scoreboard players operation WorldborderTimeToShrink options = #0 const
tellraw @s
tellraw @s[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The worldborder_time_to_shrink option has been set to ","color":"gray"},{"score":{"name":"WorldborderTimeToShrink","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]


tellraw @s
tellraw @s[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option worldborder_time_to_shrink a été mise à ","color":"gray"},{"score":{"name":"WorldborderTimeToShrink","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s opt_worldborder_time_to_shrink 0
scoreboard players enable @s opt_worldborder_time_to_shrink

function scaffolding_rush:options/refresh
