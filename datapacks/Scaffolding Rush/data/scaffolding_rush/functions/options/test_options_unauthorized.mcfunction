execute as @s[scores={option_preset=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_preset=..-1}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_build_height=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_sand=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_instant_pil=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_perf_mode=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_bumping_arrow=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_fireball=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_ender_pearl=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_perf_mode=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_team_egg=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_vil_resp_cd=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_vil_respawn=1..}] run function scaffolding_rush:options/msg_unauthorized
execute if score WBAddTemp options matches 0 as @s[scores={option_wb_size_add=1..}] run function scaffolding_rush:options/msg_unauthorized
execute if score WBAddTemp options matches 0 as @s[scores={option_wb_size_add=..-1}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_regen=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_fall_damage=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_random_team=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_team_number=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_resp_delay=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_admin=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_villager=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_option_language=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_lasting_bases=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_flag_take_over=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_flag_spawn_interval=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_interactible_lobby=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_volcano=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_volcano_summon_period=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_volcano_pop_period=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_volcano_target_rate=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_scaff_stops_arrow=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_time_limit=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_score_limit=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_use_time_limit=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_use_score_limit=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_worldborder_shrink=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_worldborder_start_time=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_worldborder_start_time=..-1}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_worldborder_time_to_shrink=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_worldborder_time_to_shrink=..-1}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_lava_speed=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_lava_speed=..-1}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_fast_climb=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_movable_villager=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={option_invulnerable_villager=1..}] run function scaffolding_rush:options/msg_unauthorized

function scaffolding_rush:options/disable_all
