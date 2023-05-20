# Classic Preset

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The preset ","color":"gray"},{"text":"Classic","color":"gold"},{"text":" has been chosen","color":"gray"}]
tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"Le préréglage ","color":"gray"},{"text":"Classique","color":"gold"},{"text":" a été choisi","color":"gray"}]

# Map
scoreboard players set LavaSpeed options 7
scoreboard players set WBSize options 95
scoreboard players set WBSize2 options 60
scoreboard players set WBSize3 options 95
scoreboard players set WBSize4 options 130
scoreboard players set WorldborderShrink options 0
scoreboard players set BuildHeight options 20
scoreboard players set UseTimeLimit options 0
scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set Regen options 1
scoreboard players set FallDamage options 0
scoreboard players set UseSand options 1
scoreboard players set UseSnowball options 0
scoreboard players set ScaffoldingStopsArrow options 1
scoreboard players set UseEnderPearl options 0
scoreboard players set UseFireball options 0
scoreboard players set InstantPillar options 0
scoreboard players set FastClimb options 0
scoreboard players set RespawnDelay options 3
scoreboard players set LastingBases options 0
scoreboard players set Rafts options 0

# Villager
scoreboard players set Villager options 1
scoreboard players set VillagerForgiveness options 1
scoreboard players set VillagerRespawn options 30
scoreboard players set InvulnerableVillager options 0
scoreboard players set MovableVillager options 1

# Flags
scoreboard players set FlagTakeOver options 0

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 40
scoreboard players set VolcanoSummonPeriod options 600
scoreboard players set VolcanoTargetRate options 0

function scaffolding_rush:options/map/wb_size_refresh
function scaffolding_rush:options/refresh
