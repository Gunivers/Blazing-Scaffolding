# Get Those F Flags Preset

# tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The preset ","color":"gray"},{"text":"Get Those F Flags","color":"light_purple"},{"text":" has been chosen","color":"gray"}]
# tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le préréglage ","color":"gray"},{"text":"Get Those F Flags","color":"light_purple"},{"text":" a été choisi","color":"gray"}]

scoreboard players set Preset options 5

# Map
scoreboard players set LavaSpeed options 5
scoreboard players set WBSize options 40
scoreboard players set WBSize2 options 30
scoreboard players set WBSize3 options 40
scoreboard players set WBSize4 options 95
scoreboard players set WorldborderShrink options 0
scoreboard players set WorldborderStartTime options 2
scoreboard players set WorldborderTimeToShrink options 5
scoreboard players set BuildHeight options 30
scoreboard players set UseTimeLimit options 1
scoreboard players set TimeLimit options 5
scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set Regen options 1
scoreboard players set FallDamage options 1
scoreboard players set UseSand options 1
scoreboard players set UseSnowball options 1
scoreboard players set ScaffoldingStopsArrow options 1
scoreboard players set UseEnderPearl options 0
scoreboard players set UseFireball options 1
scoreboard players set InstantPillar options 1
scoreboard players set FastClimb options 1
scoreboard players set RespawnDelay options 5
scoreboard players set LastingBases options 1
scoreboard players set Rafts options 1

# Villager
scoreboard players set Villager options 1
scoreboard players set VillagerForgiveness options 1
scoreboard players set InvulnerableVillager options 1
scoreboard players set MovableVillager options 0

# Flags
scoreboard players set FlagTakeOver options 1

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 10
scoreboard players set VolcanoSummonPeriod options 200
scoreboard players set VolcanoTargetRate options 10

function scaffolding_rush:options/refresh