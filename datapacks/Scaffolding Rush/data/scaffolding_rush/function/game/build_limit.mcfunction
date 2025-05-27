#move it to the player coordinates and build limit height
tp @e[type=marker,name="build.limit"] ~ ~ ~
scoreboard players operation @e[type=marker,name="build.limit"] pos.y = #lava.level data
scoreboard players operation @e[type=marker,name="build.limit"] pos.y += #map.build_height options
execute as @e[type=marker,name="build.limit"] store result entity @s Pos[1] double 1 run scoreboard players get @s pos.y

execute as @e[type=marker,name="build.limit"] at @s run fill ~-5 ~1 ~-5 ~5 ~1 ~5 minecraft:moving_piston replace #scaffolding_rush:air

execute at @e[type=marker,name="build.limit"] run particle dust 0.227 0.18 0.169 0.5 ~ ~1 ~ 1 0 1 0 3 normal @s
