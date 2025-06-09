scoreboard players enable @a option_worldborder_size

scoreboard players operation WBSize options = @s option_worldborder_size

execute unless entity @a[tag=inTutorial] run function scaffolding_rush:options/map/wb_size_refresh

function scaffolding_rush:options/refresh

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.worldborder_size_add","color":"gray"},{"score":{"name":"WBSize","objective":"options"},"color":"gold"},{"text":" "},{"translate":"blazing_scaffolding.blocks","color":"gray"}]
