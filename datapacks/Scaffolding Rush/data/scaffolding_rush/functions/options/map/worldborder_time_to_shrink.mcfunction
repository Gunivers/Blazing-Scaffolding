
#generated option function

scoreboard players operation WorldborderTimeToShrink options = @s option.worldborder_time_to_shrink
execute if score @s option.worldborder_time_to_shrink matches ..-1 run scoreboard players operation WorldborderTimeToShrink options = 0 const

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The worldborder shrink time has been set to ","color":"gray"},{"score":{"name":"WorldborderTimeToShrink","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le temps de rétrécissement de la worldborder a été défini à ","color":"gray"},{"score":{"name":"WorldborderTimeToShrink","objective":"options"},"color":"gold"},{"text":"","color":"gold"}]

scoreboard players set @s option.worldborder_time_to_shrink 0
scoreboard players enable @s option.worldborder_time_to_shrink

function scaffolding_rush:options/refresh
