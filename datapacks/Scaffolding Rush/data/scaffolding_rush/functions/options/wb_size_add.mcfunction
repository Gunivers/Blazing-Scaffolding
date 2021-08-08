scoreboard players enable @a opt_wb_size_add

scoreboard players operation WBAddTemp options = @s opt_wb_size_add

function scaffolding_rush:options/wb_size_refresh

function scaffolding_rush:options/refresh

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The worldborder has been set to ","color":"gray"},{"score":{"name":"WBSize","objective":"options"},"color":"gold"},{"text":" blocks","color":"gray"}]