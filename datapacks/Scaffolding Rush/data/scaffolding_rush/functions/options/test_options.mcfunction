execute as @s[scores={option.preset=1..}] run function scaffolding_rush:options/preset
execute as @s[scores={option.preset=..-1}] run function scaffolding_rush:options/preset
execute as @s[scores={option.build_height=1..}] run function scaffolding_rush:options/map/build_height
execute as @s[scores={option.sand=1..}] run function scaffolding_rush:options/gameplay/sand
execute as @s[scores={option.instant_pil=1..}] run function scaffolding_rush:options/gameplay/instant_pillar
execute as @s[scores={option.perf_mode=1..}] run function scaffolding_rush:options/perf_mode
execute as @s[scores={option.bumping_arrow=1..}] run function scaffolding_rush:options/gameplay/snowball
execute as @s[scores={option.fireball=1..}] run function scaffolding_rush:options/gameplay/fireball
execute as @s[scores={option.ender_pearl=1..}] run function scaffolding_rush:options/gameplay/ender_pearl
execute as @s[scores={option.perf_mode=1..}] run function scaffolding_rush:options/perf_mode
execute as @s[scores={option.team_egg=1..}] run function scaffolding_rush:options/team/team_egg
execute as @s[scores={option.vil_resp_cd=1..}] run function scaffolding_rush:options/villager/vil_resp_cd
execute as @s[scores={option.vil_respawn=1..}] run function scaffolding_rush:options/villager/vil_respawn
execute if score WBAddTemp options matches 0 as @s[scores={option.wb_size_add=1..}] run function scaffolding_rush:options/map/wb_size_add
execute if score WBAddTemp options matches 0 as @s[scores={option.wb_size_add=..-1}] run function scaffolding_rush:options/map/wb_size_add
execute as @s[scores={option.regen=1..}] run function scaffolding_rush:options/gameplay/regen
execute as @s[scores={option.fall_damage=1..}] run function scaffolding_rush:options/gameplay/fall_damage
execute as @s[scores={option.random_team=1..}] run function scaffolding_rush:options/team/random_team
execute as @s[scores={option.team_number=1..}] run function scaffolding_rush:options/team/team_number
execute as @s[scores={option.resp_delay=1..}] run function scaffolding_rush:options/gameplay/respawn_delay
execute as @s[scores={option.admin=1..}] run function scaffolding_rush:options/admin
execute as @s[scores={option.villager=1..}] run function scaffolding_rush:options/villager/villager
execute as @s[scores={option.option.language=1..}] run function scaffolding_rush:options/language
execute as @s[scores={option.lasting_bases=1..}] run function scaffolding_rush:options/gameplay/lasting_bases
execute as @s[scores={option.flag_take_over=1..}] run function scaffolding_rush:options/flag/flag_take_over
execute as @s[scores={option.flag_spawn_interval=1..}] run function scaffolding_rush:options/flag/flag_spawn_interval
execute as @s[scores={option.interactible_lobby=1..}] run function scaffolding_rush:options/map/interactible_lobby
execute as @s[scores={option.volcano=1..}] run function scaffolding_rush:options/volcano/volcano
execute as @s[scores={option.volcano_summon_period=1..}] run function scaffolding_rush:options/volcano/volcano_summon_period
execute as @s[scores={option.volcano_pop_period=1..}] run function scaffolding_rush:options/volcano/volcano_pop_period
execute as @s[scores={option.volcano_target_rate=1..}] run function scaffolding_rush:options/volcano/volcano_target_rate
execute as @s[scores={option.scaff_stops_arrow=1..}] run function scaffolding_rush:options/gameplay/scaff_stops_arrow
execute as @s[scores={option.time_limit=1..}] run function scaffolding_rush:options/map/time_limit
execute as @s[scores={option.score_limit=1..}] run function scaffolding_rush:options/map/score_limit
execute as @s[scores={option.use_time_limit=1..}] run function scaffolding_rush:options/map/use_time_limit
execute as @s[scores={option.use_score_limit=1..}] run function scaffolding_rush:options/map/use_score_limit
execute as @s[scores={option.worldborder_shrink=1..}] run function scaffolding_rush:options/map/worldborder_shrink
execute as @s[scores={option.worldborder_start_time=1..}] run function scaffolding_rush:options/map/worldborder_start_time
execute as @s[scores={option.worldborder_start_time=..-1}] run function scaffolding_rush:options/map/worldborder_start_time
execute as @s[scores={option.worldborder_time_to_shrink=1..}] run function scaffolding_rush:options/map/worldborder_time_to_shrink
execute as @s[scores={option.worldborder_time_to_shrink=..-1}] run function scaffolding_rush:options/map/worldborder_time_to_shrink
execute as @s[scores={option.lava_speed=1..}] run function scaffolding_rush:options/map/lava_speed
execute as @s[scores={option.lava_speed=..-1}] run function scaffolding_rush:options/map/lava_speed
execute as @s[scores={option.fast_climb=1..}] run function scaffolding_rush:options/gameplay/fast_climb
execute as @s[scores={option.movable_villager=1..}] run function scaffolding_rush:options/villager/movable_villager
execute as @s[scores={option.invulnerable_villager=1..}] run function scaffolding_rush:options/villager/invulnerable_villager
