
execute if score @s option_lava_speed matches 0.. run scoreboard players operation #lava.period.second options = @s option_lava_speed
execute if score @s option_lava_speed matches ..-1 run scoreboard players operation #lava.period.second options = 0 const

tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The lava speed has been set to ","color":"gray"},{"score":{"name":"#lava.period.second","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]
tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La vitesse de la lave a été mise à ","color":"gray"},{"score":{"name":"#lava.period.second","objective":"options"},"color":"gold"},{"text":" secondes","color":"gold"}]

scoreboard players set @s option_lava_speed 0
scoreboard players enable @s option_lava_speed

function scaffolding_rush:options/refresh
