
scoreboard players operation @s option.language = @s opt_language
scoreboard players remove @s option.language 1

execute if score @s option.language matches 0 run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"text":"Your language has been set to ","color":"gray"},{"text":"English","color":"gold"}]
execute if score @s option.language matches 1 run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"text":"Votre langue a été mise en ","color":"gray"},{"text":"Française","color":"gold"}]

scoreboard players set @a opt_language 0
scoreboard players enable @a opt_language

function scaffolding_rush:options/refresh
execute if score #lobby.active data matches 1 run function scaffolding_rush:lobby/refresh_items