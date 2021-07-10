
scoreboard players operation WBAddTemp global = #10 global
scoreboard players operation WBAddTemp global *= @s opt_wb_size_add
scoreboard players operation WBSize options += WBAddTemp global
execute if score WBSize options matches ..14 run scoreboard players set WBSize options 15
execute if score WBSize options matches 156.. run scoreboard players set WBSize options 165

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The worldborder has been set to "},{"score":{"name":"WBSize","objective":"options"},"color":"gold"}]

function loumardes:scaffolding_rush/options/wb_size_refresh

scoreboard players set @a opt_wb_size_add 0
scoreboard players enable @a opt_wb_size_add

function loumardes:scaffolding_rush/options/refresh
