#raise the base by adding a layer of blocks without breaking the scaffoldings

#fill the base ground (side blocks supports the bridges)
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:light_gray_concrete

#fill the walls
fill ~-2 ~1 ~-2 ~-2 ~1 ~2 minecraft:light_gray_concrete replace air
fill ~-2 ~1 ~-2 ~2 ~1 ~-2 minecraft:light_gray_concrete replace air
fill ~-2 ~1 ~2 ~2 ~1 ~2 minecraft:light_gray_concrete replace air
fill ~2 ~1 ~-2 ~2 ~1 ~2 minecraft:light_gray_concrete replace air


#fill the middle crenelation
fill ~ ~2 ~-2 ~ ~2 ~-2 minecraft:light_gray_concrete replace air
fill ~ ~2 ~2 ~ ~2 ~2 minecraft:light_gray_concrete replace air
fill ~-2 ~2 ~ ~-2 ~2 ~ minecraft:light_gray_concrete replace air
fill ~2 ~2 ~ ~2 ~2 ~ minecraft:light_gray_concrete replace air

#fill the corner crenelation
fill ~-2 ~2 ~-2 ~-2 ~2 ~-2 minecraft:light_gray_concrete replace air
fill ~-2 ~2 ~2 ~-2 ~2 ~2 minecraft:light_gray_concrete replace air
fill ~2 ~2 ~-2 ~2 ~2 ~-2 minecraft:light_gray_concrete replace air
fill ~2 ~2 ~2 ~2 ~2 ~2 minecraft:light_gray_concrete replace air

#converts to the right block
execute if entity @s[name="Blue"] run fill ~-2 ~ ~-2 ~2 ~3 ~2 blue_concrete replace light_gray_concrete
execute if entity @s[name="Green"] run fill ~-2 ~ ~-2 ~2 ~3 ~2 lime_concrete replace light_gray_concrete
execute if entity @s[name="Red"] run fill ~-2 ~ ~-2 ~2 ~3 ~2 red_concrete replace light_gray_concrete
execute if entity @s[name="Yellow"] run fill ~-2 ~ ~-2 ~2 ~3 ~2 yellow_concrete replace light_gray_concrete

execute if entity @s[name="Blue"] run spawnpoint @a[team=blue] ~ ~5 ~
execute if entity @s[name="Green"] run spawnpoint @a[team=green] ~ ~5 ~
execute if entity @s[name="Red"] run spawnpoint @a[team=red] ~ ~5 ~
execute if entity @s[name="Yellow"] run spawnpoint @a[team=yellow] ~ ~5 ~
