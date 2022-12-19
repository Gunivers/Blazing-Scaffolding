tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The preset ","color":"gray"},{"text":"Rush Premium","color":"light_purple"},{"text":" has been chosen","color":"gray"}]
tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Le préréglage ","color":"gray"},{"text":"Rush Premium","color":"light_purple"},{"text":" a été choisi","color":"gray"}]

scoreboard players set LavaSpeed options 3
scoreboard players set WBSize options 145
function scaffolding_rush:options/wb_size_refresh
scoreboard players set BuildHeight options 30
scoreboard players set Regen options 0
scoreboard players set FallDamage options 0
scoreboard players set UseSand options 1
scoreboard players set UseSnowball options 1
scoreboard players set ScaffoldingStopsArrow options 1
scoreboard players set InstantPillar options 1
scoreboard players set RespawnDelay options 1
scoreboard players set VillagerForgiveness options 0
scoreboard players set Villager options 1
scoreboard players set lasting_bases options 0
scoreboard players set flag_hunt options 0
scoreboard players set Volcano options 0

function scaffolding_rush:options/refresh
