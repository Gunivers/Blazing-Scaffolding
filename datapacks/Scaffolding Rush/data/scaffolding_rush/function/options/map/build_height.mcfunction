
scoreboard players operation #map.build_height options = @s option_build_height

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.build_height","color":"gray"},{"score":{"name":"#map.build_height","objective":"options"},"color":"gold"}]

scoreboard players set @s option_build_height 0
scoreboard players enable @s option_build_height

function scaffolding_rush:options/refresh
