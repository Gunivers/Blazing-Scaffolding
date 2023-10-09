
execute store success score #villager.can_respawn options if score #villager.can_respawn options matches 0

execute if score #villager.can_respawn options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager ","color":"gray"},{"text":"can't respawn","color":"red"}]
execute unless score #villager.can_respawn options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The Villager ","color":"gray"},{"text":"can respawn","color":"green"}]

execute if score #villager.can_respawn options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le Villageois ne peut ","color":"gray"},{"text":"pas réapparaître","color":"red"}]
execute unless score #villager.can_respawn options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le Villageois peut ","color":"gray"},{"text":"réapparaître","color":"green"}]

scoreboard players set @s option.vil_respawn 0
scoreboard players enable @s option.vil_respawn

function scaffolding_rush:options/refresh
