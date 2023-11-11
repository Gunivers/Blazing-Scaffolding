# Avoid sand to physically stack (and then forbide creating sand towers)

execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:light_gray_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:blue_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:lime_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:red_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:yellow_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:cyan_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill

# Negative effects of other teams blocks --------------------------------------

tag @a remove player.walk_on_other_team_block

execute as @a[team=red,tag=!player.is_dead] at @s positioned ~0.3 ~-0.001 ~0.3 if block ~ ~ ~ #scaffolding_rush:not_red_block run tag @s add player.walk_on_other_team_block
execute as @a[team=red,tag=!player.is_dead] at @s positioned ~-0.3 ~-0.001 ~0.3 if block ~ ~ ~ #scaffolding_rush:not_red_block run tag @s add player.walk_on_other_team_block
execute as @a[team=red,tag=!player.is_dead] at @s positioned ~0.3 ~-0.001 ~-0.3 if block ~ ~ ~ #scaffolding_rush:not_red_block run tag @s add player.walk_on_other_team_block
execute as @a[team=red,tag=!player.is_dead] at @s positioned ~-0.3 ~-0.001 ~-0.3 if block ~ ~ ~ #scaffolding_rush:not_red_block run tag @s add player.walk_on_other_team_block

execute as @a[team=blue,tag=!player.is_dead] at @s positioned ~0.3 ~-0.001 ~0.3 if block ~ ~ ~ #scaffolding_rush:not_blue_block run tag @s add player.walk_on_other_team_block
execute as @a[team=blue,tag=!player.is_dead] at @s positioned ~-0.3 ~-0.001 ~0.3 if block ~ ~ ~ #scaffolding_rush:not_blue_block run tag @s add player.walk_on_other_team_block
execute as @a[team=blue,tag=!player.is_dead] at @s positioned ~0.3 ~-0.001 ~-0.3 if block ~ ~ ~ #scaffolding_rush:not_blue_block run tag @s add player.walk_on_other_team_block
execute as @a[team=blue,tag=!player.is_dead] at @s positioned ~-0.3 ~-0.001 ~-0.3 if block ~ ~ ~ #scaffolding_rush:not_blue_block run tag @s add player.walk_on_other_team_block

execute as @a[team=green,tag=!player.is_dead] at @s positioned ~0.3 ~-0.001 ~0.3 if block ~ ~ ~ #scaffolding_rush:not_green_block run tag @s add player.walk_on_other_team_block
execute as @a[team=green,tag=!player.is_dead] at @s positioned ~-0.3 ~-0.001 ~0.3 if block ~ ~ ~ #scaffolding_rush:not_green_block run tag @s add player.walk_on_other_team_block
execute as @a[team=green,tag=!player.is_dead] at @s positioned ~0.3 ~-0.001 ~-0.3 if block ~ ~ ~ #scaffolding_rush:not_green_block run tag @s add player.walk_on_other_team_block
execute as @a[team=green,tag=!player.is_dead] at @s positioned ~-0.3 ~-0.001 ~-0.3 if block ~ ~ ~ #scaffolding_rush:not_green_block run tag @s add player.walk_on_other_team_block

execute as @a[team=yellow,tag=!player.is_dead] at @s positioned ~0.3 ~-0.001 ~0.3 if block ~ ~ ~ #scaffolding_rush:not_yellow_block run tag @s add player.walk_on_other_team_block
execute as @a[team=yellow,tag=!player.is_dead] at @s positioned ~-0.3 ~-0.001 ~0.3 if block ~ ~ ~ #scaffolding_rush:not_yellow_block run tag @s add player.walk_on_other_team_block
execute as @a[team=yellow,tag=!player.is_dead] at @s positioned ~0.3 ~-0.001 ~-0.3 if block ~ ~ ~ #scaffolding_rush:not_yellow_block run tag @s add player.walk_on_other_team_block
execute as @a[team=yellow,tag=!player.is_dead] at @s positioned ~-0.3 ~-0.001 ~-0.3 if block ~ ~ ~ #scaffolding_rush:not_yellow_block run tag @s add player.walk_on_other_team_block

effect give @a[tag=player.walk_on_other_team_block,tag=!lobby.in_protected_area] wither 1 1 true
effect clear @a[tag=!player.walk_on_other_team_block,tag=!lobby.in_protected_area] wither
effect give @a[tag=player.walk_on_other_team_block,tag=!lobby.in_protected_area] slowness 1 1 true
effect clear @a[tag=!player.walk_on_other_team_block,tag=!lobby.in_protected_area] slowness