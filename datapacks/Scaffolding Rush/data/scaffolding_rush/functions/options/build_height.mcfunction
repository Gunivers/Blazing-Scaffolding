
scoreboard players operation BuildHeight options = @s opt_build_height

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The build height has been set to ","color":"gray"},{"score":{"name":"BuildHeight","objective":"options"},"color":"gold"}]
tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"La limite de build a été réglée à ","color":"gray"},{"score":{"name":"BuildHeight","objective":"options"},"color":"gold"}]

scoreboard players set @a opt_build_height 0
scoreboard players enable @a opt_build_height

function scaffolding_rush:options/refresh
