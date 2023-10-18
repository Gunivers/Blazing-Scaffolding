playsound minecraft:block.stone.place master @a[distance=..30] ~ ~ ~ 1 1 0

execute if entity @s[tag=blue_villager] run summon marker ~ ~1 ~ {Tags:["base.marker","base.blue"]}
execute if entity @s[tag=red_villager] run summon marker ~ ~1 ~ {Tags:["base.marker","base.red"]}
execute if entity @s[tag=green_villager] run summon marker ~ ~1 ~ {Tags:["base.marker","base.green"]}
execute if entity @s[tag=yellow_villager] run summon marker ~ ~1 ~ {Tags:["base.marker","base.yellow"]}

particle cloud ~ ~ ~ 2 2 2 0 100 force

tp @s ~ ~1 ~

execute positioned ~-2 ~-1 ~-2 align xyz as @a[dx=4,dy=3,dz=4] at @s run tp @s ~ ~1 ~
execute positioned ~-2 ~-1 ~-2 align xyz as @a[dx=4,dy=3,dz=4] at @s run tp @s ~ ~1 ~
execute positioned ~-0.9 ~3 ~-0.9 as @a[dx=0.8,dy=2,dz=0.8] at @s run tp @s ~ ~-1 ~
execute positioned ~-2 ~-1 ~-2 align xyz as @a[dx=4,dy=3,dz=4] at @s run tp @s ~ ~1 ~
execute positioned ~-0.9 ~3 ~-0.9 as @a[dx=0.8,dy=2,dz=0.8] at @s run tp @s ~ ~-1 ~
execute positioned ~-2 ~-1 ~-2 align xyz as @a[dx=4,dy=3,dz=4] at @s run tp @s ~ ~1 ~
execute positioned ~-0.9 ~3 ~-0.9 as @a[dx=0.8,dy=2,dz=0.8] at @s run tp @s ~ ~-1 ~


fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:light_gray_concrete replace minecraft:air
fill ~-1 ~1 ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:light_gray_concrete

fill ~-1 ~2 ~-2 ~-1 ~2 ~2 minecraft:air replace minecraft:light_gray_concrete
fill ~1 ~2 ~-2 ~1 ~2 ~2 minecraft:air replace minecraft:light_gray_concrete

fill ~-2 ~2 ~-1 ~2 ~2 ~-1 minecraft:air replace minecraft:light_gray_concrete
fill ~-2 ~2 ~1 ~2 ~2 ~1 minecraft:air replace minecraft:light_gray_concrete

execute if entity @s[tag=blue_villager] run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:blue_concrete replace minecraft:light_gray_concrete
execute if entity @s[tag=red_villager] run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:red_concrete replace minecraft:light_gray_concrete
execute if entity @s[tag=green_villager] run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:green_concrete replace minecraft:light_gray_concrete
execute if entity @s[tag=yellow_villager] run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:yellow_concrete replace minecraft:light_gray_concrete

