# Volcano Preset

scoreboard players set Preset options 4

# Map
scoreboard players set #lava.period.second options 10
scoreboard players set WBSize options 140
scoreboard players set WBSize2 options 115
scoreboard players set WBSize3 options 140
scoreboard players set WBSize4 options 165
scoreboard players set WorldborderShrink options 0


scoreboard players set #map.build_height options 30
scoreboard players set UseTimeLimit options 0

scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set #gameplay.regeneration.enabled options 1
scoreboard players set #gameplay.fall_damage.enabled options 1
scoreboard players set #player.item.sand.enabled options 1
scoreboard players set #player.item.bumping_arrow.enabled options 0
scoreboard players set #gameplay.scaffolding_stop_arrow.enabled options 1
scoreboard players set #player.item.ender_pearl.enabled options 0
scoreboard players set #player.item.fireball.enabled options 1
scoreboard players set #gameplay.instant_pillar.enabled options 1
scoreboard players set #gameplay.fast_climb.enabled options 0

scoreboard players set #gameplay.lasting_base.enabled options 0
scoreboard players set Rafts options 0

# Villager
scoreboard players set #villager.enabled options 0

scoreboard players set #villager.respawn.seconds options 30



# Flags
scoreboard players set #flag.take_over options 0

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 10
scoreboard players set VolcanoSummonPeriod options 140
scoreboard players set VolcanoTargetRate options 5

function scaffolding_rush:options/refresh

# EN
tellraw @a [{"translate":"blazing_scaffolding.volcanos","color":"dark_red","bold":true},{"translate":"blazing_scaffolding.volcano_preset","color":"gray","bold":false},{"text":"\n---","color":"dark_red","bold":true}]
