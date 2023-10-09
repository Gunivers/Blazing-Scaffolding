# Get Those Flags Preset

# tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The preset ","color":"gray"},{"text":"Get Those Flags","color":"green"},{"text":" has been chosen","color":"gray"}]
# tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le préréglage ","color":"gray"},{"text":"Get Those Flags","color":"green"},{"text":" a été choisi","color":"gray"}]

scoreboard players set Preset options 5

# Map
scoreboard players set #lava.period.second options 5
scoreboard players set WBSize options 40
scoreboard players set WBSize2 options 30
scoreboard players set WBSize3 options 40
scoreboard players set WBSize4 options 95
scoreboard players set WorldborderShrink options 0
scoreboard players set BuildHeight options 30
scoreboard players set UseTimeLimit options 1
scoreboard players set #game.time.limit options 5
scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set Regen options 1
scoreboard players set FallDamage options 1
scoreboard players set UseSand options 1
scoreboard players set UseSnowball options 1
scoreboard players set ScaffoldingStopsArrow options 1
scoreboard players set UseEnderPearl options 0
scoreboard players set UseFireball options 0
scoreboard players set InstantPillar options 1
scoreboard players set FastClimb options 0
scoreboard players set #respawn.delay.second options 5
scoreboard players set #lasting_base options 1
scoreboard players set Rafts options 1

# Villager
scoreboard players set #villager.enabled options 1
scoreboard players set #villager.can_respawn options 1
scoreboard players set Invulnerable#villager.enabled options 1
scoreboard players set Movable#villager.enabled options 0

# Flags
scoreboard players set #flag.take_over options 1

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 40
scoreboard players set VolcanoSummonPeriod options 300
scoreboard players set VolcanoTargetRate options 25

function scaffolding_rush:options/refresh
