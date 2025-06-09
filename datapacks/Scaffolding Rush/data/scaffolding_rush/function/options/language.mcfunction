
scoreboard players operation @s language = @s language
scoreboard players remove @s language 1

execute if score @s language matches 0 run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"text":"Your language has been set to ","color":"gray"},{"text":"English","color":"gold"}]
execute if score @s language matches 1 run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"text":"Votre langue a été mise en ","color":"gray"},{"text":"Française","color":"gold"}]

scoreboard players set @a language 0
scoreboard players enable @a language

function scaffolding_rush:options/refresh