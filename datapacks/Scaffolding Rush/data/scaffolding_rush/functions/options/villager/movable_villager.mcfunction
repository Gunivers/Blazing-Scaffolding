
#generated option function

execute store success score #village.movable options if score #village.movable options matches 0

execute if score #village.movable options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager is ","color":"gray"},{"text":"immobile","color":"red"}]
execute unless score #village.movable options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager is ","color":"gray"},{"text":"moveable","color":"green"}]

execute if score #village.movable options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le villageois est ","color":"gray"},{"text":"immobile","color":"red"}]
execute unless score #village.movable options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le villageois est","color":"gray"},{"text":"déplaçable","color":"green"}]

scoreboard players set @s option_movable_villager 0
scoreboard players enable @s option_movable_villager

function scaffolding_rush:options/refresh
