
execute as @a[scores={opt_wb_size_add=0}] run scoreboard players operation WBSize options += @s opt_wb_size_add

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The worldborder has been set to "},{"score":{"name":"WBSize","objective":"options"},"color":"gold"}]

scoreboard players set @a opt_wb_size_add 0
scoreboard players enable @a opt_wb_size_add

function loumardes:give_book
