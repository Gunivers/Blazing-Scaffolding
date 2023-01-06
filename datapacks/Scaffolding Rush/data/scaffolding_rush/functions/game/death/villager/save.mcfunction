#prevent the villager from falling in the lava

#teleport it above the lava
tp @s ~ ~1 ~

#place support blocks
execute if entity @s[tag=blue_villager] run fill ~ ~ ~ ~ ~-2 ~ blue_concrete replace #scaffolding_rush:air
execute if entity @s[tag=green_villager] run fill ~ ~ ~ ~ ~-2 ~ green_concrete replace #scaffolding_rush:air
execute if entity @s[tag=red_villager] run fill ~ ~ ~ ~ ~-2 ~ red_concrete replace #scaffolding_rush:air
execute if entity @s[tag=yellow_villager] run fill ~ ~ ~ ~ ~-2 ~ yellow_concrete replace #scaffolding_rush:air

