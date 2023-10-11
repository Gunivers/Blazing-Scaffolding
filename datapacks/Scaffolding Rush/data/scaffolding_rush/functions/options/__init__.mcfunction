#create the trigger objectives

scoreboard objectives add usedTrigger dummy

#initialize the options scores
scoreboard objectives add option_preset trigger
execute unless score Preset options matches 1..7 run scoreboard players set Preset options 1
scoreboard objectives add option_perf_mode trigger
execute unless score #performance_mode options matches 0.. run scoreboard players set #performance_mode options 0
scoreboard objectives add option_language trigger
scoreboard objectives add option_admin trigger
execute unless score #admin.exist options matches 0.. run scoreboard players set #admin.exist options 0

# Flag
scoreboard objectives add option_flag_take_over trigger
execute unless score #flag.take_over options matches 0..1 run scoreboard players set #flag.take_over options 0
scoreboard objectives add option_flag_spawn_interval trigger
execute unless score #flag.take_over.spawn_interval options matches 0.. run scoreboard players set #flag.take_over.spawn_interval options 600

# Gameplay
scoreboard objectives add option_ender_pearl trigger
execute unless score #player.item.ender_pearl.enabled options matches 0.. run scoreboard players set #player.item.ender_pearl.enabled options 0
scoreboard objectives add option_fall_damage trigger
execute unless score #gameplay.fall_damage.enabled options matches 0.. run scoreboard players set #gameplay.fall_damage.enabled options 0
scoreboard objectives add option_fast_climb trigger
execute unless score #gameplay.fast_climb.enabled options matches 0..1 run scoreboard players set #gameplay.fast_climb.enabled options 0
scoreboard objectives add option_fireball trigger
execute unless score #player.item.fireball.enabled options matches 0.. run scoreboard players set #player.item.fireball.enabled options 0
scoreboard objectives add option_instant_pil trigger
execute unless score #gameplay.instant_pillar.enabled options matches 0.. run scoreboard players set #gameplay.instant_pillar.enabled options 0
scoreboard objectives add option_lasting_bases trigger
execute unless score #gameplay.lasting_base.enabled options matches 0..1 run scoreboard players set #gameplay.lasting_base.enabled options 0
scoreboard objectives add option_regen trigger
execute unless score #gameplay.regeneration.enabled options matches 0.. run scoreboard players set #gameplay.regeneration.enabled options 1
scoreboard objectives add option_resp_delay trigger
execute unless score #gameplay.respawn.delay.second options matches 1.. run scoreboard players set #gameplay.respawn.delay.second options 3
scoreboard objectives add option_sand trigger
execute unless score #player.item.sand.enabled options matches 0.. run scoreboard players set #player.item.sand.enabled options 1
scoreboard objectives add option_scaff_stops_arrow trigger
execute unless score #gameplay.scaffolding_stop_arrow.enabled options matches 0.. run scoreboard players set #gameplay.scaffolding_stop_arrow.enabled options 0
scoreboard objectives add option_bumping_arrow trigger
execute unless score #player.item.bumping_arrow.enabled options matches 0.. run scoreboard players set #player.item.bumping_arrow.enabled options 0

# Map
scoreboard objectives add option_build_height trigger
execute unless score #map.build_height options matches 5.. run scoreboard players set #map.build_height options 20
scoreboard objectives add option_interactible_lobby trigger
execute unless score #map.indestructible_lobby options matches 0..1 run scoreboard players set #map.indestructible_lobby options 1
scoreboard objectives add option_lava_speed trigger
execute unless score #lava.period.second options matches 0.. run scoreboard players set #lava.period.second options 20
scoreboard objectives add option_time_limit trigger
execute unless score #game.time.limit options matches 1.. run scoreboard players set #game.time.limit options 3
scoreboard objectives add option_score_limit trigger
execute unless score ScoreLimit options matches 1.. run scoreboard players set ScoreLimit options 20
scoreboard objectives add option_use_time_limit trigger
execute unless score UseTimeLimit options matches 0..1 run scoreboard players set UseTimeLimit options 0
scoreboard objectives add option_use_score_limit trigger
execute unless score UseScoreLimit options matches 0..1 run scoreboard players set UseScoreLimit options 0
scoreboard objectives add option_wb_size_add trigger
execute unless score WBSize options matches 25..165 run scoreboard players set WBSize options 95
scoreboard objectives add option_worldborder_shrink trigger
execute unless score WorldborderShrink options matches 0..1 run scoreboard players set WorldborderShrink options 0
scoreboard objectives add option_worldborder_start_time trigger
execute unless score #worldborder.start_time.second options matches 0.. run scoreboard players set #worldborder.start_time.second options 1
scoreboard objectives add option_worldborder_time_to_shrink trigger
execute unless score WorldborderTimeToShrink options matches 1.. run scoreboard players set WorldborderTimeToShrink options 2

# Team
scoreboard objectives add option_team_egg trigger
execute unless score TeamEgg options matches 0.. run scoreboard players set TeamEgg options 0
scoreboard objectives add option_team_number trigger
execute unless score TeamNumber options matches 0.. run scoreboard players set TeamNumber options 2

# Villager
scoreboard objectives add option_invulnerable_villager trigger
execute unless score #villager.cannot_fall_in_lava options matches 0..1 run scoreboard players set #villager.cannot_fall_in_lava options 0
scoreboard objectives add option_villager trigger
execute unless score #villager.enabled options matches 0.. run scoreboard players set #villager.enabled options 1
scoreboard objectives add option_movable_villager trigger
execute unless score #village.movable options matches 0..1 run scoreboard players set #village.movable options 1
scoreboard objectives add option_vil_resp_cd trigger
execute unless score #villager.respawn.seconds options matches 0.. run scoreboard players set #villager.respawn.seconds options 30
scoreboard objectives add option_vil_respawn trigger
execute unless score #villager.can_respawn options matches 0.. run scoreboard players set #villager.can_respawn options 1

# Volcano
scoreboard objectives add option_volcano_pop_period trigger
execute unless score VolcanoPopPeriod options matches 0.. run scoreboard players set VolcanoPopPeriod options 10
scoreboard objectives add option_volcano_summon_period trigger
execute unless score VolcanoSummonPeriod options matches 0.. run scoreboard players set VolcanoSummonPeriod options 1200
scoreboard objectives add option_volcano_target_rate trigger
execute unless score VolcanoTargetRate options matches 0.. run scoreboard players set VolcanoTargetRate options 25
scoreboard objectives add option_volcano trigger
execute unless score Volcano options matches 0.. run scoreboard players set Volcano options 0

# Tutorial
scoreboard objectives add lobby trigger
