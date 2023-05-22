# Volcano Preset

tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The preset ","color":"gray"},{"text":"Volcano","color":"dark_red"},{"text":" has been chosen","color":"gray"}]
tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le préréglage ","color":"gray"},{"text":"Volcano","color":"dark_red"},{"text":" a été choisi","color":"gray"}]

scoreboard players set Preset options 6

# Map
scoreboard players set LavaSpeed options 10
scoreboard players set WBSize options 140
scoreboard players set WBSize2 options 115
scoreboard players set WBSize3 options 140
scoreboard players set WBSize4 options 165
scoreboard players set WorldborderShrink options 0
scoreboard players set BuildHeight options 30
scoreboard players set UseTimeLimit options 0
scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set Regen options 1
scoreboard players set FallDamage options 1
scoreboard players set UseSand options 1
scoreboard players set UseSnowball options 0
scoreboard players set ScaffoldingStopsArrow options 1
scoreboard players set UseEnderPearl options 0
scoreboard players set UseFireball options 1
scoreboard players set InstantPillar options 1
scoreboard players set FastClimb options 0
scoreboard players set LastingBases options 1
scoreboard players set Rafts options 0

# Villager
scoreboard players set Villager options 0

# Flags
scoreboard players set FlagTakeOver options 0

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 10
scoreboard players set VolcanoSummonPeriod options 140
scoreboard players set VolcanoTargetRate options 5

function scaffolding_rush:options/refresh