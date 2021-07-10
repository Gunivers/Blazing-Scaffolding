
execute as @a[scores={opt_build_height=1..}] run scoreboard players operation BuildHeight options = @s opt_build_height

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The build height has been set to ","color":"gray"},{"score":{"name":"BuildHeight","objective":"options"},"color":"gold"}]

scoreboard players set @a opt_build_height 0
scoreboard players enable @a opt_build_height

function loumardes:give_book
