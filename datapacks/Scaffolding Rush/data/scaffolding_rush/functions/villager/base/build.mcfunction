playsound minecraft:block.stone.place master @a[distance=..30] ~ ~ ~ 1 1 0

execute if entity @s[tag=blue_villager] run summon marker ~ ~1 ~ {Tags:["base.marker","base.blue"]}
execute if entity @s[tag=red_villager] run summon marker ~ ~1 ~ {Tags:["base.marker","base.red"]}
execute if entity @s[tag=green_villager] run summon marker ~ ~1 ~ {Tags:["base.marker","base.green"]}
execute if entity @s[tag=yellow_villager] run summon marker ~ ~1 ~ {Tags:["base.marker","base.yellow"]}

particle cloud ~ ~ ~ 2 2 2 0 100 force

tp @s ~ ~1 ~
fill ~-2 ~-5 ~-2 ~2 ~2 ~2 minecraft:light_gray_concrete_powder replace minecraft:air
fill ~-1 ~1 ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:light_gray_concrete_powder

fill ~-1 ~2 ~-2 ~-1 ~2 ~2 minecraft:air replace minecraft:light_gray_concrete_powder
fill ~1 ~2 ~-2 ~1 ~2 ~2 minecraft:air replace minecraft:light_gray_concrete_powder

fill ~-2 ~2 ~-1 ~2 ~2 ~-1 minecraft:air replace minecraft:light_gray_concrete_powder
fill ~-2 ~2 ~1 ~2 ~2 ~1 minecraft:air replace minecraft:light_gray_concrete_powder

execute if entity @s[tag=blue_villager] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:blue_concrete_powder replace minecraft:light_gray_concrete_powder
execute if entity @s[tag=red_villager] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:red_concrete_powder replace minecraft:light_gray_concrete_powder
execute if entity @s[tag=green_villager] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:green_concrete_powder replace minecraft:light_gray_concrete_powder
execute if entity @s[tag=yellow_villager] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:yellow_concrete_powder replace minecraft:light_gray_concrete_powder


execute positioned ~-2 ~-2 ~-2 align xyz as @a[dx=4,dy=4,dz=4] at @s run tp @s ~ ~4 ~
execute positioned ~-1 ~3 ~-1 align xyz as @a[dx=2,dy=2,dz=2] at @s run tp @s ~ ~-3 ~