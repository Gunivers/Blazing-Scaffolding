
#generated option function

execute store success score Movable#villager.enabled options if score Movable#villager.enabled options matches 0

execute if score Movable#villager.enabled options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager is ","color":"gray"},{"text":"immobile","color":"red"}]
execute unless score Movable#villager.enabled options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager is ","color":"gray"},{"text":"moveable","color":"green"}]

execute if score Movable#villager.enabled options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le villageois est ","color":"gray"},{"text":"immobile","color":"red"}]
execute unless score Movable#villager.enabled options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le villageois est","color":"gray"},{"text":"déplaçable","color":"green"}]

scoreboard players set @s opt_movable_villager 0
scoreboard players enable @s opt_movable_villager

function scaffolding_rush:options/refresh
