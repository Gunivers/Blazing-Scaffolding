scoreboard players enable @a option_wb_size_add

scoreboard players operation WBAddTemp options = @s option_wb_size_add

execute unless entity @a[tag=inTutorial] run function scaffolding_rush:options/map/wb_size_refresh

function scaffolding_rush:options/refresh

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.worldborder_size_add","color":"gray"},{"score":{"name":"WBSize","objective":"options"},"color":"gold"},{"text":" "},{"translate":"blazing_scaffolding.blocks","color":"gray"}]
