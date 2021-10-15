
scoreboard players operation @s language = @s opt_language
scoreboard players remove @s language 1

execute if score @s language matches 0 run tellraw @s ["",{"text":"[SR] ","color":"gold"},{"text":"Your language has been set to ","color":"gray"},{"text":"English","color":"gold"}]
execute if score @s language matches 1 run tellraw @s ["",{"text":"[SR] ","color":"gold"},{"text":"Votre langue a été mise en ","color":"gray"},{"text":"Française","color":"gold"}]

scoreboard players set @a opt_language 0
scoreboard players enable @a opt_language

function scaffolding_rush:options/refresh