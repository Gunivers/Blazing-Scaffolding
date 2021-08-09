execute store success score KillableVillager options if score KillableVillager options matches 0

execute if score KillableVillager options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The villager respawn has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score KillableVillager options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The villager respawn has been ","color":"gray"},{"text":"activated","color":"green"}]

scoreboard players set @a opt_vil_killable 0
scoreboard players enable @a opt_vil_killable

function scaffolding_rush:options/refresh
