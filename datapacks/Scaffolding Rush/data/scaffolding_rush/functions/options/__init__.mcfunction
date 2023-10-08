#create the trigger objectives

scoreboard objectives add usedTrigger dummy

#initialize the options scores
scoreboard objectives add opt_preset trigger
execute unless score Preset options matches 1..7 run scoreboard players set Preset options 1
scoreboard objectives add opt_perf_mode trigger
execute unless score PerformanceMode options matches 0.. run scoreboard players set PerformanceMode options 0
scoreboard objectives add opt_language trigger
scoreboard objectives add opt_admin trigger
execute unless score #admin.exist options matches 0.. run scoreboard players set #admin.exist options 0

# Flag
scoreboard objectives add opt_flag_take_over trigger
execute unless score #flag.take_over options matches 0..1 run scoreboard players set #flag.take_over options 0
scoreboard objectives add opt_flag_spawn_interval trigger
execute unless score #flag.take_over.spawn_interval options matches 0.. run scoreboard players set #flag.take_over.spawn_interval options 600

# Gameplay
scoreboard objectives add opt_ender_pearl trigger
execute unless score UseEnderPearl options matches 0.. run scoreboard players set UseEnderPearl options 0
scoreboard objectives add opt_fall_damage trigger
execute unless score FallDamage options matches 0.. run scoreboard players set FallDamage options 0
scoreboard objectives add opt_fast_climb trigger
execute unless score FastClimb options matches 0..1 run scoreboard players set FastClimb options 0
scoreboard objectives add opt_fireball trigger
execute unless score UseFireball options matches 0.. run scoreboard players set UseFireball options 0
scoreboard objectives add opt_instant_pil trigger
execute unless score InstantPillar options matches 0.. run scoreboard players set InstantPillar options 0
scoreboard objectives add opt_lasting_bases trigger
execute unless score LastingBases options matches 0..1 run scoreboard players set LastingBases options 0
scoreboard objectives add opt_regen trigger
execute unless score Regen options matches 0.. run scoreboard players set Regen options 1
scoreboard objectives add opt_resp_delay trigger
execute unless score #respawn.delay.second options matches 1.. run scoreboard players set #respawn.delay.second options 3
scoreboard objectives add opt_sand trigger
execute unless score UseSand options matches 0.. run scoreboard players set UseSand options 1
scoreboard objectives add opt_scaff_stops_arrow trigger
execute unless score ScaffoldingStopsArrow options matches 0.. run scoreboard players set ScaffoldingStopsArrow options 0
scoreboard objectives add opt_snowball trigger
execute unless score UseSnowball options matches 0.. run scoreboard players set UseSnowball options 0

# Map
scoreboard objectives add opt_build_height trigger
execute unless score BuildHeight options matches 5.. run scoreboard players set BuildHeight options 20
scoreboard objectives add opt_interactible_lobby trigger
execute unless score InteractibleLobby options matches 0..1 run scoreboard players set InteractibleLobby options 1
scoreboard objectives add opt_lava_speed trigger
execute unless score #lava.speed.second options matches 0.. run scoreboard players set #lava.speed.second options 20
scoreboard objectives add opt_time_limit trigger
execute unless score #game.time.limit options matches 1.. run scoreboard players set #game.time.limit options 3
scoreboard objectives add opt_score_limit trigger
execute unless score ScoreLimit options matches 1.. run scoreboard players set ScoreLimit options 20
scoreboard objectives add opt_use_time_limit trigger
execute unless score UseTimeLimit options matches 0..1 run scoreboard players set UseTimeLimit options 0
scoreboard objectives add opt_use_score_limit trigger
execute unless score UseScoreLimit options matches 0..1 run scoreboard players set UseScoreLimit options 0
scoreboard objectives add opt_wb_size_add trigger
execute unless score WBSize options matches 25..165 run scoreboard players set WBSize options 95
scoreboard objectives add opt_worldborder_shrink trigger
execute unless score WorldborderShrink options matches 0..1 run scoreboard players set WorldborderShrink options 0
scoreboard objectives add opt_worldborder_start_time trigger
execute unless score #worldborder.start_time.second options matches 0.. run scoreboard players set #worldborder.start_time.second options 1
scoreboard objectives add opt_worldborder_time_to_shrink trigger
execute unless score WorldborderTimeToShrink options matches 1.. run scoreboard players set WorldborderTimeToShrink options 2

# Team
scoreboard objectives add opt_random_team trigger
execute unless score RandomTeam options matches 0..1 run scoreboard players set RandomTeam options 0
scoreboard objectives add opt_team_egg trigger
execute unless score TeamEgg options matches 0.. run scoreboard players set TeamEgg options 0
scoreboard objectives add opt_team_number trigger
execute unless score TeamNumber options matches 0.. run scoreboard players set TeamNumber options 2

# Villager
scoreboard objectives add opt_invulnerable_villager trigger
execute unless score Invulnerable#villager.enabled options matches 0..1 run scoreboard players set Invulnerable#villager.enabled options 0
scoreboard objectives add opt_villager trigger
execute unless score #villager.enabled options matches 0.. run scoreboard players set #villager.enabled options 1
scoreboard objectives add opt_movable_villager trigger
execute unless score Movable#villager.enabled options matches 0..1 run scoreboard players set Movable#villager.enabled options 1
scoreboard objectives add opt_vil_resp_cd trigger
execute unless score #villager.respawn.seconds options matches 0.. run scoreboard players set #villager.respawn.seconds options 30
scoreboard objectives add opt_vil_respawn trigger
execute unless score #villager.can_respawn options matches 0.. run scoreboard players set #villager.can_respawn options 1

# Volcano
scoreboard objectives add opt_volcano_pop_period trigger
execute unless score VolcanoPopPeriod options matches 0.. run scoreboard players set VolcanoPopPeriod options 10
scoreboard objectives add opt_volcano_summon_period trigger
execute unless score VolcanoSummonPeriod options matches 0.. run scoreboard players set VolcanoSummonPeriod options 1200
scoreboard objectives add opt_volcano_target_rate trigger
execute unless score VolcanoTargetRate options matches 0.. run scoreboard players set VolcanoTargetRate options 25
scoreboard objectives add opt_volcano trigger
execute unless score Volcano options matches 0.. run scoreboard players set Volcano options 0

# Tutorial
scoreboard objectives add lobby trigger
