# Avoid sand to physically stack (and then forbide creating sand towers)

execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:light_gray_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:blue_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:lime_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:red_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:yellow_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:cyan_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:sand run function scaffolding_rush:mechanics/sand/kill

