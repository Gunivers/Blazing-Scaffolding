execute as @a[scores={opt_preset=1..}] run function scaffolding_rush:options/preset
execute as @a[scores={opt_build_height=1..}] run function scaffolding_rush:options/build_height
execute as @a[scores={opt_sand=1..}] run function scaffolding_rush:options/sand
execute as @a[scores={opt_instant_pil=1..}] run function scaffolding_rush:options/instant_pillar
execute as @a[scores={opt_perf_mode=1..}] run function scaffolding_rush:options/perf_mode
execute as @a[scores={opt_snowball=1..}] run function scaffolding_rush:options/snowball
execute as @a[scores={opt_fireball=1..}] run function scaffolding_rush:options/fireball
execute as @a[scores={opt_ender_pearl=1..}] run function scaffolding_rush:options/ender_pearl
execute as @a[scores={opt_perf_mode=1..}] run function scaffolding_rush:options/perf_mode
execute as @a[scores={opt_team_egg=1..}] run function scaffolding_rush:options/team_egg
execute as @a[scores={opt_vil_resp_cd=1..}] run function scaffolding_rush:options/vil_resp_cd
execute as @a[scores={opt_vil_respawn=1..}] run function scaffolding_rush:options/vil_respawn
execute if score WBAddTemp options matches 0 as @a[scores={opt_wb_size_add=1..}] run function scaffolding_rush:options/wb_size_add
execute if score WBAddTemp options matches 0 as @a[scores={opt_wb_size_add=..-1}] run function scaffolding_rush:options/wb_size_add
execute as @a[scores={opt_regen=1..}] run function scaffolding_rush:options/regen
execute as @a[scores={opt_fall_damage=1..}] run function scaffolding_rush:options/fall_damage
execute as @a[scores={opt_random_team=1..}] run function scaffolding_rush:options/random_team
execute as @a[scores={opt_team_number=1..}] run function scaffolding_rush:options/team_number
execute as @a[scores={opt_resp_delay=1..}] run function scaffolding_rush:options/respawn_delay
execute as @a[scores={opt_admin=1..}] run function scaffolding_rush:options/admin
execute as @a[scores={opt_villager=1..}] run function scaffolding_rush:options/villager
execute as @a[scores={opt_language=1..}] run function scaffolding_rush:options/language
execute as @a[scores={opt_lasting_bases=1..}] run function scaffolding_rush:options/lasting_bases
execute as @a[scores={opt_flag_take_over=1..}] run function scaffolding_rush:options/flag_take_over
execute as @a[scores={opt_interactible_lobby=1..}] run function scaffolding_rush:options/interactible_lobby
execute as @a[scores={opt_volcano=1..}] run function scaffolding_rush:options/volcano
execute as @a[scores={opt_volcano_summon_period=1..}] run function scaffolding_rush:options/volcano_summon_period
execute as @a[scores={opt_volcano_pop_period=1..}] run function scaffolding_rush:options/volcano_pop_period
execute as @a[scores={opt_volcano_target_rate=1..}] run function scaffolding_rush:options/volcano_target_rate
execute as @a[scores={opt_scaff_stops_arrow=1..}] run function scaffolding_rush:options/scaff_stops_arrow
execute as @a[scores={opt_time_limit=1..}] run function scaffolding_rush:options/time_limit
execute as @a[scores={opt_score_limit=1..}] run function scaffolding_rush:options/score_limit
execute as @a[scores={opt_use_time_limit=1..}] run function scaffolding_rush:options/use_time_limit
execute as @a[scores={opt_use_score_limit=1..}] run function scaffolding_rush:options/use_score_limit
execute as @a[scores={opt_worldborder_shrink=1..}] run function scaffolding_rush:options/worldborder_shrink
execute as @a[tag=game_options_enabled] store result score @s usedTrigger run scoreboard players enable @s opt_worldborder_start_time
execute as @a[tag=game_options_enabled] if score @s usedTrigger matches 1 run function scaffolding_rush:options/worldborder_start_time
execute as @a[tag=game_options_enabled] store result score @s usedTrigger run scoreboard players enable @s opt_worldborder_time_to_shrink
execute as @a[tag=game_options_enabled] if score @s usedTrigger matches 1 run function scaffolding_rush:options/worldborder_time_to_shrink
execute as @a[tag=game_options_enabled] store result score @s usedTrigger run scoreboard players enable @s opt_lava_speed
execute as @a[tag=game_options_enabled] if score @s usedTrigger matches 1 run function scaffolding_rush:options/lava_speed
execute as @a[scores={opt_fast_climb=1..}] run function scaffolding_rush:options/fast_climb
execute as @a[scores={opt_movable_villager=1..}] run function scaffolding_rush:options/movable_villager
execute as @a[scores={opt_invulnerable_villager=1..}] run function scaffolding_rush:options/invulnerable_villager
