
teleport @s ~ ~-0.75 ~

execute if entity @s[nbt={BlockState:{Name:"minecraft:green_concrete_powder"}}] at @s run particle block green_concrete_powder ~ ~0.5 ~ 0.5 0.5 0.5 1 50 normal
execute if entity @s[nbt={BlockState:{Name:"minecraft:blue_concrete_powder"}}] at @s run particle block blue_concrete_powder ~ ~0.5 ~ 0.5 0.5 0.5 1 50 normal
execute if entity @s[nbt={BlockState:{Name:"minecraft:yellow_concrete_powder"}}] at @s run particle block yellow_concrete_powder ~ ~0.5 ~ 0.5 0.5 0.5 1 50 normal
execute if entity @s[nbt={BlockState:{Name:"minecraft:red_concrete_powder"}}] at @s run particle block red_concrete_powder ~ ~0.5 ~ 0.5 0.5 0.5 1 50 normal

playsound minecraft:block.sand.break master @a[distance=..30] ~ ~ ~ 1 1 0

kill @s
