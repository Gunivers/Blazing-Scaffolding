
#generated option function

scoreboard players operation WorldborderStartTime options = @s opt_worldborder_start_time

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The worldborder_start_time option has been set to ","color":"gray"},{"score":{"name":"WorldborderStartTime","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]



tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'option worldborder_start_time a été mise à ","color":"gray"},{"score":{"name":"WorldborderStartTime","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s opt_worldborder_start_time 0
scoreboard players enable @s opt_worldborder_start_time

function scaffolding_rush:options/refresh
