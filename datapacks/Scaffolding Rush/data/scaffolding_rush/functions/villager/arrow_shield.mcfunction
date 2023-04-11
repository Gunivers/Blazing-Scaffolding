execute as @e[type=villager] positioned ~ ~1 ~ at @e[type=arrow,distance=..3] run particle smoke ~ ~ ~ 0 0 0 0.05 50 force
execute as @e[type=villager] positioned ~ ~1 ~ at @e[type=arrow,distance=..3] run playsound minecraft:block.amethyst_cluster.break master @a[distance=..30] ~ ~ ~ 2 2 1
execute as @e[type=villager] positioned ~ ~1 ~ run kill @e[type=arrow,distance=..3]