#move it to the player coordinates and build limit height
tp @n[type=marker,name="build.limit"] ~ ~ ~
scoreboard players operation @n[type=marker,name="build.limit"] pos.y = #lava.level data
scoreboard players operation @n[type=marker,name="build.limit"] pos.y += #map.build_height options
execute as @n[type=marker,name="build.limit"] store result entity @s Pos[1] double 1 run scoreboard players get @s pos.y

execute as @n[type=marker,name="build.limit"] at @s run fill ~-5 ~1 ~-5 ~5 ~1 ~5 minecraft:moving_piston replace #scaffolding_rush:air

execute at @n[type=marker,name="build.limit"] run particle dust{color:3482423,scale:1} ~ ~1 ~ 7 0 7 0.5 30 normal @s
