execute store success score #villager.enabled options if score #villager.enabled options matches 0

execute if score #villager.enabled options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #villager.enabled options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #villager.enabled options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le Villageois a été ","color":"gray"},{"text":"désactivé","color":"red"}]
execute unless score #villager.enabled options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le Villageois a été ","color":"gray"},{"text":"activé","color":"green"}]


scoreboard players set @s option_villager 0
scoreboard players enable @s option_villager

function scaffolding_rush:options/refresh
