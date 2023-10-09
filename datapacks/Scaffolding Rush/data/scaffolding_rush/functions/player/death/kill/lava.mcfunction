
execute if score DevelopementMode data matches 1 run say player/death/kill/lava

execute if entity @s run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s"},{"text":" died in the lava","color":"gray"}]
execute if entity @s run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s"},{"text":" est mort·e dans la lave","color":"gray"}]

function scaffolding_rush:player/death/kill