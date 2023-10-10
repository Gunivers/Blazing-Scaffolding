# WTF Preset

# tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The preset ","color":"gray"},{"text":"Chaos","color":"#9900FF"},{"text":" has been chosen","color":"gray"}]
# tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le préréglage ","color":"gray"},{"text":"Chaos","color":"#9900FF"},{"text":" a été choisi","color":"gray"}]

scoreboard players set Preset options 3

# Map
scoreboard players set #lava.period.second options 1
scoreboard players set WBSize options 165
scoreboard players set WBSize2 options 165
scoreboard players set WBSize3 options 165
scoreboard players set WBSize4 options 165
scoreboard players set WorldborderShrink options 1
scoreboard players set #worldborder.start_time.second options 0
scoreboard players set WorldborderTimeToShrink options 5
scoreboard players set #map.build_height options 100
scoreboard players set UseTimeLimit options 0
scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set #gameplay.regeneration.enabled options 1
scoreboard players set #gameplay.fall_damage.enabled options 0
scoreboard players set #player.item.sand.enabled options 1
scoreboard players set #player.item.bumping_arrow.enabled options 1
scoreboard players set #gameplay.scaffolding_stop_arrow.enabled options 1
scoreboard players set #player.item.ender_pearl.enabled options 1
scoreboard players set #player.item.fireball.enabled options 1
scoreboard players set #gameplay.instant_pillar.enabled options 1
scoreboard players set #gameplay.fast_climb.enabled options 1
scoreboard players set #gameplay.respawn.delay.second options 1
scoreboard players set #gameplay.lasting_base.enabled options 0
scoreboard players set Rafts options 1

# Villager
scoreboard players set #villager.enabled options 1
scoreboard players set #villager.can_respawn options 1
scoreboard players set #villager.respawn.seconds options 60
scoreboard players set #villager.cannot_fall_in_lava options 0
scoreboard players set #village.movable options 1

# Flags
scoreboard players set #flag.take_over options 0

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 10
scoreboard players set VolcanoSummonPeriod options 60
scoreboard players set VolcanoTargetRate options 5

function scaffolding_rush:options/refresh