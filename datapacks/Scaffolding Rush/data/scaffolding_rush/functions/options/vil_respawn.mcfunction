
execute store success score VillagerForgiveness options if score VillagerForgiveness options matches 0

execute if score VillagerForgiveness options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The villager respawn has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score VillagerForgiveness options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The villager respawn has been ","color":"gray"},{"text":"activated","color":"green"}]

scoreboard players set @a opt_vil_respawn 0
scoreboard players enable @a opt_vil_respawn

function scaffolding_rush:options/refresh
