
execute as @a[scores={opt_lava_speed=1..}] run scoreboard players operation Lavaspeed options = @s opt_lava_speed


tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The lava speed has been set to "},{"score":{"name":"Lavaspeed","objective":"options"},"color":"gold"}]

scoreboard players set @a opt_lava_speed 0
scoreboard players enable @a opt_lava_speed

function loumardes:scaffolding_rush/options/refresh
