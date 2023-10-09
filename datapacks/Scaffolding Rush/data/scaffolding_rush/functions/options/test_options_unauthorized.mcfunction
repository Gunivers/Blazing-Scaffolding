execute as @s[scores={opt_preset=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_preset=..-1}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_build_height=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_sand=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_instant_pil=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_perf_mode=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_bumping_arrow=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_fireball=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_ender_pearl=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_perf_mode=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_team_egg=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_vil_resp_cd=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_vil_respawn=1..}] run function scaffolding_rush:options/msg_unauthorized
execute if score WBAddTemp options matches 0 as @s[scores={opt_wb_size_add=1..}] run function scaffolding_rush:options/msg_unauthorized
execute if score WBAddTemp options matches 0 as @s[scores={opt_wb_size_add=..-1}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_regen=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_fall_damage=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_random_team=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_team_number=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_resp_delay=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_admin=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_villager=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_option.language=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_lasting_bases=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_flag_take_over=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_flag_spawn_interval=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_interactible_lobby=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_volcano=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_volcano_summon_period=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_volcano_pop_period=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_volcano_target_rate=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_scaff_stops_arrow=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_time_limit=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_score_limit=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_use_time_limit=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_use_score_limit=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_worldborder_shrink=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_worldborder_start_time=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_worldborder_start_time=..-1}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_worldborder_time_to_shrink=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_worldborder_time_to_shrink=..-1}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_lava_speed=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_lava_speed=..-1}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_fast_climb=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_movable_villager=1..}] run function scaffolding_rush:options/msg_unauthorized
execute as @s[scores={opt_invulnerable_villager=1..}] run function scaffolding_rush:options/msg_unauthorized

function scaffolding_rush:options/disable_all
