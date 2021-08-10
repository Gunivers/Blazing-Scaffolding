
execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_gravel 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_gravel 0

execute if score UseGravel options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_gravel 1
execute if score UseGravel options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_gravel 1


execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_instant_pil 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_instant_pil 0

execute if score InstantPillar options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_instant_pil 1
execute if score InstantPillar options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_instant_pil 1

execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_perf_mode 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_perf_mode 0

execute if score PerformanceMode options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_perf_mode 1
execute if score PerformanceMode options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_perf_mode 1


execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_snowball 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_snowball 0

execute if score UseSnowball options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_snowball 1
execute if score UseSnowball options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_snowball 1


execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_team_egg 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_team_egg 0

execute if score TeamEgg options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_team_egg 1
execute if score TeamEgg options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_team_egg 1


execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_vil_respawn 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_vil_respawn 0

execute if score VillagerForgiveness options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_vil_respawn 1
execute if score VillagerForgiveness options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_vil_respawn 1

execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_regen 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_regen 0

execute if score Regen options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_regen 1
execute if score Regen options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_regen 1

execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_fall_damage 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_fall_damage 0

execute if score FallDamage options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_fall_damage 1
execute if score FallDamage options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_fall_damage 1

execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_random_team 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_random_team 0

execute if score RandomTeam options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_random_team 1
execute if score RandomTeam options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_random_team 1

execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_admin 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_admin 0

execute if score Admin options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_admin 1
execute if score Admin options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_admin 1

execute as @e[type=marker,name="✔"] run scoreboard players set @s opt_villager 0
execute as @e[type=marker,name="✖"] run scoreboard players set @s opt_villager 0

execute if score Villager options matches 1 as @e[type=marker,name="✔"] run scoreboard players set @s opt_villager 1
execute if score Villager options matches 0 as @e[type=marker,name="✖"] run scoreboard players set @s opt_villager 1
