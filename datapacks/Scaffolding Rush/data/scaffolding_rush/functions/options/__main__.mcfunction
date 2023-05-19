execute as @a[scores={opt_preset=1..}] run function scaffolding_rush:options/preset
execute as @a[scores={opt_build_height=1..}] run function scaffolding_rush:options/map/build_height
execute as @a[scores={opt_sand=1..}] run function scaffolding_rush:options/gameplay/sand
execute as @a[scores={opt_instant_pil=1..}] run function scaffolding_rush:options/gameplay/instant_pillar
execute as @a[scores={opt_perf_mode=1..}] run function scaffolding_rush:options/perf_mode
execute as @a[scores={opt_snowball=1..}] run function scaffolding_rush:options/gameplay/snowball
execute as @a[scores={opt_fireball=1..}] run function scaffolding_rush:options/gameplay/fireball
execute as @a[scores={opt_ender_pearl=1..}] run function scaffolding_rush:options/gameplay/ender_pearl
execute as @a[scores={opt_perf_mode=1..}] run function scaffolding_rush:options/perf_mode
execute as @a[scores={opt_team_egg=1..}] run function scaffolding_rush:options/team/team_egg
execute as @a[scores={opt_vil_resp_cd=1..}] run function scaffolding_rush:options/villager/vil_resp_cd
execute as @a[scores={opt_vil_respawn=1..}] run function scaffolding_rush:options/villager/vil_respawn
execute if score WBAddTemp options matches 0 as @a[scores={opt_wb_size_add=1..}] run function scaffolding_rush:options/map/wb_size_add
execute if score WBAddTemp options matches 0 as @a[scores={opt_wb_size_add=..-1}] run function scaffolding_rush:options/map/wb_size_add
execute as @a[scores={opt_regen=1..}] run function scaffolding_rush:options/gameplay/regen
execute as @a[scores={opt_fall_damage=1..}] run function scaffolding_rush:options/gameplay/fall_damage
execute as @a[scores={opt_random_team=1..}] run function scaffolding_rush:options/team/random_team
execute as @a[scores={opt_team_number=1..}] run function scaffolding_rush:options/team/team_number
execute as @a[scores={opt_resp_delay=1..}] run function scaffolding_rush:options/gameplay/respawn_delay
execute as @a[scores={opt_admin=1..}] run function scaffolding_rush:options/admin
execute as @a[scores={opt_villager=1..}] run function scaffolding_rush:options/villager/villager
execute as @a[scores={opt_language=1..}] run function scaffolding_rush:options/language
execute as @a[scores={opt_lasting_bases=1..}] run function scaffolding_rush:options/gameplay/lasting_bases
execute as @a[scores={opt_flag_take_over=1..}] run function scaffolding_rush:options/flag/flag_take_over
execute as @a[scores={opt_interactible_lobby=1..}] run function scaffolding_rush:options/map/interactible_lobby
execute as @a[scores={opt_volcano=1..}] run function scaffolding_rush:options/volcano/volcano
execute as @a[scores={opt_volcano_summon_period=1..}] run function scaffolding_rush:options/volcano/volcano_summon_period
execute as @a[scores={opt_volcano_pop_period=1..}] run function scaffolding_rush:options/volcano/volcano_pop_period
execute as @a[scores={opt_volcano_target_rate=1..}] run function scaffolding_rush:options/volcano/volcano_target_rate
execute as @a[scores={opt_scaff_stops_arrow=1..}] run function scaffolding_rush:options/gameplay/scaff_stops_arrow
execute as @a[scores={opt_time_limit=1..}] run function scaffolding_rush:options/map/time_limit
execute as @a[scores={opt_score_limit=1..}] run function scaffolding_rush:options/map/score_limit
execute as @a[scores={opt_use_time_limit=1..}] run function scaffolding_rush:options/map/use_time_limit
execute as @a[scores={opt_use_score_limit=1..}] run function scaffolding_rush:options/map/use_score_limit
execute as @a[scores={opt_worldborder_shrink=1..}] run function scaffolding_rush:options/map/worldborder_shrink
execute as @a[tag=game_options_enabled] store result score @s usedTrigger run scoreboard players enable @s opt_worldborder_start_time
execute as @a[tag=game_options_enabled] if score @s usedTrigger matches 1 run function scaffolding_rush:options/map/worldborder_start_time
execute as @a[tag=game_options_enabled] store result score @s usedTrigger run scoreboard players enable @s opt_worldborder_time_to_shrink
execute as @a[tag=game_options_enabled] if score @s usedTrigger matches 1 run function scaffolding_rush:options/map/worldborder_time_to_shrink
execute as @a[tag=game_options_enabled] store result score @s usedTrigger run scoreboard players enable @s opt_lava_speed
execute as @a[tag=game_options_enabled] if score @s usedTrigger matches 1 run function scaffolding_rush:options/map/lava_speed
execute as @a[scores={opt_fast_climb=1..}] run function scaffolding_rush:options/gameplay/fast_climb
execute as @a[scores={opt_movable_villager=1..}] run function scaffolding_rush:options/villager/movable_villager
execute as @a[scores={opt_invulnerable_villager=1..}] run function scaffolding_rush:options/villager/invulnerable_villager
