
execute if score #admin.exist options matches 1 as @a[tag=admin] run function scaffolding_rush:options/test_options
execute if score #admin.exist options matches 1 as @a[tag=!admin] run function scaffolding_rush:options/test_options_unauthorized
execute unless score #admin.exist options matches 1 as @a run function scaffolding_rush:options/test_options

execute if score #admin.exist options matches 1 as @a[tag=admin] run function scaffolding_rush:options/test_options

execute as @s[tag=game_options_enabled] store result score @s usedTrigger run scoreboard players enable @s option.worldborder_start_time

