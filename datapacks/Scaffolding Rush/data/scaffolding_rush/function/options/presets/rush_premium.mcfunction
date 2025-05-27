# Rush Premium Preset

scoreboard players set Preset options 2

# Map
scoreboard players set #lava.period.second options 3
scoreboard players set WBSize options 145
scoreboard players set WBSize2 options 120
scoreboard players set WBSize3 options 145
scoreboard players set WBSize4 options 165
scoreboard players set WorldborderShrink options 1
scoreboard players set #worldborder.start_time.second options 2
scoreboard players set WorldborderTimeToShrink options 5
scoreboard players set #map.build_height options 30
scoreboard players set UseTimeLimit options 0

scoreboard players set UseScoreLimit options 0

# Gameplay
scoreboard players set #gameplay.regeneration.enabled options 0
scoreboard players set #gameplay.fall_damage.enabled options 0
scoreboard players set #player.item.sand.enabled options 1
scoreboard players set #player.item.bumping_arrow.enabled options 1
scoreboard players set #gameplay.scaffolding_stop_arrow.enabled options 1
scoreboard players set #player.item.ender_pearl.enabled options 0
scoreboard players set #player.item.fireball.enabled options 0
scoreboard players set #gameplay.instant_pillar.enabled options 1
scoreboard players set #gameplay.fast_climb.enabled options 1
scoreboard players set #gameplay.respawn.delay.second options 1
scoreboard players set #gameplay.lasting_base.enabled options 0
scoreboard players set Rafts options 1

# Villager
scoreboard players set #villager.enabled options 1
scoreboard players set #villager.can_respawn options 0
scoreboard players set #villager.respawn.seconds options 30
scoreboard players set #villager.invulnerable options 0
scoreboard players set #villager.movable options 1

# Flags
scoreboard players set #flag.take_over options 0

# Volcano
scoreboard players set Volcano options 1
scoreboard players set VolcanoPopPeriod options 40
scoreboard players set VolcanoSummonPeriod options 300
scoreboard players set VolcanoTargetRate options 25

function scaffolding_rush:options/refresh

# EN
tellraw @a [{"translate":"blazing_scaffolding.rush_prenium","color":"#7027FF","bold":true},{"text":"\n\n"},{"translate":"blazing_scaffolding.rush_prenium_preset","color":"gray","bold":false},{"text":"\n---","color":"#7027FF","bold":true}]

# FR