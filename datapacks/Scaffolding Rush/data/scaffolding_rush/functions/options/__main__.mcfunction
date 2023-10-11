
execute if score #admin.exist options matches 1 as @a[tag=admin] run function scaffolding_rush:options/test_options
execute if score #admin.exist options matches 1 as @a[tag=!admin] run function scaffolding_rush:options/test_options_unauthorized
execute unless score #admin.exist options matches 1 as @a run function scaffolding_rush:options/test_options

execute if score #admin.exist options matches 1 as @a[tag=admin] run function scaffolding_rush:options/test_options

execute as @s[tag=game_options_enabled] store result score @s usedTrigger run scoreboard players enable @s option_worldborder_start_time

execute if score #gameplay.regeneration.enabled options matches 1 run effect give @a regeneration infinite 0 true
execute if score #gameplay.regeneration.enabled options matches 0 run effect clear @a regeneration
