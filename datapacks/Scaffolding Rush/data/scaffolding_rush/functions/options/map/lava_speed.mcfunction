
execute if score @s option_lava_speed matches 0.. run scoreboard players operation #lava.period.second options = @s option_lava_speed
execute if score @s option_lava_speed matches ..-1 run scoreboard players operation #lava.period.second options = 0 const

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.lava_speed","color":"gray"},{"score":{"name":"#lava.period.second","objective":"options"},"color":"gold"},{"translate":"blazing_scaffolding.seconds","color":"gold"}]

scoreboard players set @s option_lava_speed 0
scoreboard players enable @s option_lava_speed

function scaffolding_rush:options/refresh
