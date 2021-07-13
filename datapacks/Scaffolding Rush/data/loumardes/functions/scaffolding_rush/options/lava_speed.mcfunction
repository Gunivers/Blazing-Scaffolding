
scoreboard players operation LavaSpeed options = @s opt_lava_speed


tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The lava speed has been set to ","color":"gray"},{"score":{"name":"LavaSpeed","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]

scoreboard players set @a opt_lava_speed 0
scoreboard players enable @a opt_lava_speed

function loumardes:scaffolding_rush/options/refresh
