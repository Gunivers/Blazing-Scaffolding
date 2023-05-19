
#generated option function

scoreboard players operation WorldborderTimeToShrink options = @s opt_worldborder_time_to_shrink

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The worldborder_time_to_shrink option has been set to ","color":"gray"},{"score":{"name":"WorldborderTimeToShrink","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]



tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option worldborder_time_to_shrink a été mise à ","color":"gray"},{"score":{"name":"WorldborderTimeToShrink","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s opt_worldborder_time_to_shrink 0
scoreboard players enable @s opt_worldborder_time_to_shrink

function scaffolding_rush:options/refresh
