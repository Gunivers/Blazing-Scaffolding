#create the trigger objectives

scoreboard objectives add usedTrigger dummy

#initialize the options scores
scoreboard objectives add option.preset trigger
execute unless score Preset options matches 1..7 run scoreboard players set Preset options 1
scoreboard objectives add option.perf_mode trigger
execute unless score #performance_mode options matches 0.. run scoreboard players set #performance_mode options 0
scoreboard objectives add option.language trigger
scoreboard objectives add option.admin trigger
execute unless score #admin.exist options matches 0.. run scoreboard players set #admin.exist options 0

# Flag
scoreboard objectives add option.flag_take_over trigger
execute unless score #flag.take_over options matches 0..1 run scoreboard players set #flag.take_over options 0
scoreboard objectives add option.flag_spawn_interval trigger
execute unless score #flag.take_over.spawn_interval options matches 0.. run scoreboard players set #flag.take_over.spawn_interval options 600

# Gameplay
scoreboard objectives add option.ender_pearl trigger
execute unless score UseEnderPearl options matches 0.. run scoreboard players set UseEnderPearl options 0
scoreboard objectives add option.fall_damage trigger
execute unless score FallDamage options matches 0.. run scoreboard players set FallDamage options 0
scoreboard objectives add option.fast_climb trigger
execute unless score FastClimb options matches 0..1 run scoreboard players set FastClimb options 0
scoreboard objectives add option.fireball trigger
execute unless score UseFireball options matches 0.. run scoreboard players set UseFireball options 0
scoreboard objectives add option.instant_pil trigger
execute unless score InstantPillar options matches 0.. run scoreboard players set InstantPillar options 0
scoreboard objectives add option.lasting_bases trigger
execute unless score #lasting_base options matches 0..1 run scoreboard players set #lasting_base options 0
scoreboard objectives add option.regen trigger
execute unless score Regen options matches 0.. run scoreboard players set Regen options 1
scoreboard objectives add option.resp_delay trigger
execute unless score #respawn.delay.second options matches 1.. run scoreboard players set #respawn.delay.second options 3
scoreboard objectives add option.sand trigger
execute unless score UseSand options matches 0.. run scoreboard players set UseSand options 1
scoreboard objectives add option.scaff_stops_arrow trigger
execute unless score ScaffoldingStopsArrow options matches 0.. run scoreboard players set ScaffoldingStopsArrow options 0
scoreboard objectives add option.bumping_arrow trigger
execute unless score UseSnowball options matches 0.. run scoreboard players set UseSnowball options 0

# Map
scoreboard objectives add option.build_height trigger
execute unless score BuildHeight options matches 5.. run scoreboard players set BuildHeight options 20
scoreboard objectives add option.interactible_lobby trigger
execute unless score InteractibleLobby options matches 0..1 run scoreboard players set InteractibleLobby options 1
scoreboard objectives add option.lava_speed trigger
execute unless score #lava.period.second options matches 0.. run scoreboard players set #lava.period.second options 20
scoreboard objectives add option.time_limit trigger
execute unless score #game.time.limit options matches 1.. run scoreboard players set #game.time.limit options 3
scoreboard objectives add option.score_limit trigger
execute unless score ScoreLimit options matches 1.. run scoreboard players set ScoreLimit options 20
scoreboard objectives add option.use_time_limit trigger
execute unless score UseTimeLimit options matches 0..1 run scoreboard players set UseTimeLimit options 0
scoreboard objectives add option.use_score_limit trigger
execute unless score UseScoreLimit options matches 0..1 run scoreboard players set UseScoreLimit options 0
scoreboard objectives add option.wb_size_add trigger
execute unless score WBSize options matches 25..165 run scoreboard players set WBSize options 95
scoreboard objectives add option.worldborder_shrink trigger
execute unless score WorldborderShrink options matches 0..1 run scoreboard players set WorldborderShrink options 0
scoreboard objectives add option.worldborder_start_time trigger
execute unless score #worldborder.start_time.second options matches 0.. run scoreboard players set #worldborder.start_time.second options 1
scoreboard objectives add option.worldborder_time_to_shrink trigger
execute unless score WorldborderTimeToShrink options matches 1.. run scoreboard players set WorldborderTimeToShrink options 2

# Team
scoreboard objectives add option.team_egg trigger
execute unless score TeamEgg options matches 0.. run scoreboard players set TeamEgg options 0
scoreboard objectives add option.team_number trigger
execute unless score TeamNumber options matches 0.. run scoreboard players set TeamNumber options 2

# Villager
scoreboard objectives add option.invulnerable_villager trigger
execute unless score Invulnerable#villager.enabled options matches 0..1 run scoreboard players set Invulnerable#villager.enabled options 0
scoreboard objectives add option.villager trigger
execute unless score #villager.enabled options matches 0.. run scoreboard players set #villager.enabled options 1
scoreboard objectives add option.movable_villager trigger
execute unless score Movable#villager.enabled options matches 0..1 run scoreboard players set Movable#villager.enabled options 1
scoreboard objectives add option.vil_resp_cd trigger
execute unless score #villager.respawn.seconds options matches 0.. run scoreboard players set #villager.respawn.seconds options 30
scoreboard objectives add option.vil_respawn trigger
execute unless score #villager.can_respawn options matches 0.. run scoreboard players set #villager.can_respawn options 1

# Volcano
scoreboard objectives add option.volcano_pop_period trigger
execute unless score VolcanoPopPeriod options matches 0.. run scoreboard players set VolcanoPopPeriod options 10
scoreboard objectives add option.volcano_summon_period trigger
execute unless score VolcanoSummonPeriod options matches 0.. run scoreboard players set VolcanoSummonPeriod options 1200
scoreboard objectives add option.volcano_target_rate trigger
execute unless score VolcanoTargetRate options matches 0.. run scoreboard players set VolcanoTargetRate options 25
scoreboard objectives add option.volcano trigger
execute unless score Volcano options matches 0.. run scoreboard players set Volcano options 0

# Tutorial
scoreboard objectives add trigger.lobby trigger
