
execute store success score VillagerForgiveness options if score VillagerForgiveness options matches 0

execute if score VillagerForgiveness options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The villager respawn has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score VillagerForgiveness options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The villager respawn has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score VillagerForgiveness options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"La réapparition du villageois a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score VillagerForgiveness options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"La réapparition du villageois a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s opt_vil_respawn 0
scoreboard players enable @s opt_vil_respawn

function scaffolding_rush:options/refresh
