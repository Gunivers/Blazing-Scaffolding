execute if entity @s run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" died in the lava","color":"gray"}]
execute if entity @s run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"selector":"@s"},{"text":" est mort·e dans la lave","color":"gray"}]

function scaffolding_rush:game/death/player/kill