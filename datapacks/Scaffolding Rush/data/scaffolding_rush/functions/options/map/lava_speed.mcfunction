
execute if score @s option.lava_speed matches 0.. run scoreboard players operation #lava.period.second options = @s option.lava_speed
execute if score @s option.lava_speed matches ..-1 run scoreboard players operation #lava.period.second options = 0 const

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The lava speed has been set to ","color":"gray"},{"score":{"name":"#lava.period.second","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La vitesse de la lave a été mise à ","color":"gray"},{"score":{"name":"#lava.period.second","objective":"options"},"color":"gold"},{"text":" secondes","color":"gold"}]

scoreboard players set @s option.lava_speed 0
scoreboard players enable @s option.lava_speed

function scaffolding_rush:options/refresh
