
scoreboard players operation BuildHeight options = @s option.build_height

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The build height has been set to ","color":"gray"},{"score":{"name":"BuildHeight","objective":"options"},"color":"gold"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La limite de build a été réglée à ","color":"gray"},{"score":{"name":"BuildHeight","objective":"options"},"color":"gold"}]

scoreboard players set @s option.build_height 0
scoreboard players enable @s option.build_height

function scaffolding_rush:options/refresh
