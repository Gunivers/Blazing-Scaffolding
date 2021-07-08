
execute store success score VillagerForgiveness options if score VillagerForgiveness options matches 0

execute if score VillagerForgiveness options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The villager respawn has been "},{"text":"desactivate","color":"red"}]
execute unless score VillagerForgiveness options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The villager respawn has been "},{"text":"activate","color":"green"}]

scoreboard players set @a opt_vil_respawn 0
scoreboard players enable @a opt_vil_respawn
