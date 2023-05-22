# WTF Preset

# tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The preset ","color":"gray"},{"text":"WTF","color":"aqua"},{"text":" has been chosen","color":"gray"}]
# tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le préréglage ","color":"gray"},{"text":"WTF","color":"aqua"},{"text":" a été choisi","color":"gray"}]

scoreboard players set Preset options 7

# Map
scoreboard players set LavaSpeed options 1
scoreboard players set WBSize options 165
scoreboard players set WBSize2 options 165
scoreboard players set WBSize3 options 165
scoreboard players set WBSize4 options 165
scoreboard players set WorldborderShrink options 1
scoreboard players set WorldborderStartTime options 0
scoreboard players set WorldborderTimeToShrink options 5
scoreboard players set BuildHeight options 100
scoreboard players set UseTimeLimit options 0
scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set Regen options 1
scoreboard players set FallDamage options 0
scoreboard players set UseSand options 1
scoreboard players set UseSnowball options 1
scoreboard players set ScaffoldingStopsArrow options 1
scoreboard players set UseEnderPearl options 1
scoreboard players set UseFireball options 1
scoreboard players set InstantPillar options 1
scoreboard players set FastClimb options 1
scoreboard players set RespawnDelay options 1
scoreboard players set LastingBases options 0
scoreboard players set Rafts options 1

# Villager
scoreboard players set Villager options 1
scoreboard players set VillagerForgiveness options 1
scoreboard players set VillagerRespawn options 60
scoreboard players set InvulnerableVillager options 0
scoreboard players set MovableVillager options 0

# Flags
scoreboard players set FlagTakeOver options 0

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 10
scoreboard players set VolcanoSummonPeriod options 60
scoreboard players set VolcanoTargetRate options 5

function scaffolding_rush:options/refresh