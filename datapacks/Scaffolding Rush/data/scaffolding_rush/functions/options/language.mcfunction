
scoreboard players operation @s option_language = @s option_language
scoreboard players remove @s option_language 1

execute if score @s option_language matches 0 run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"text":"Your language has been set to ","color":"gray"},{"text":"English","color":"gold"}]
execute if score @s option_language matches 1 run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"text":"Votre langue a été mise en ","color":"gray"},{"text":"Française","color":"gold"}]

scoreboard players set @a option_language 0
scoreboard players enable @a option_language

function scaffolding_rush:options/refresh