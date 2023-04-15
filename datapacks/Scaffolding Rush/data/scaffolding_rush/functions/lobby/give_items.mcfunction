
clear @s

loot give @s loot scaffolding_rush:item/scaffolding
execute if score UseSand options matches 1 run loot give @s loot scaffolding_rush:item/sand
tag @s add CanUseSnowball
tag @s add CanUseFireball