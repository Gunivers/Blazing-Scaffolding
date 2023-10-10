# Execute as & at the base marker

playsound minecraft:block.stone.break master @a[distance=..30] ~ ~ ~ 1 1 0
particle cloud ~ ~ ~ 2 2 2 0 100 force

execute if entity @s[tag=base.blue] run fill ~-2 ~-1 ~-2 ~2 ~1 ~2 minecraft:air replace minecraft:blue_concrete_powder
execute if entity @s[tag=base.red] run fill ~-2 ~-1 ~-2 ~2 ~1 ~2 minecraft:air replace minecraft:red_concrete_powder
execute if entity @s[tag=base.green] run fill ~-2 ~-1 ~-2 ~2 ~1 ~2 minecraft:air replace minecraft:green_concrete_powder
execute if entity @s[tag=base.yellow] run fill ~-2 ~-1 ~-2 ~2 ~1 ~2 minecraft:air replace minecraft:yellow_concrete_powder

execute if entity @s[tag=base.blue] run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:air replace minecraft:blue_concrete
execute if entity @s[tag=base.red] run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:air replace minecraft:red_concrete
execute if entity @s[tag=base.green] run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:air replace minecraft:green_concrete
execute if entity @s[tag=base.yellow] run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:air replace minecraft:yellow_concrete

kill @s