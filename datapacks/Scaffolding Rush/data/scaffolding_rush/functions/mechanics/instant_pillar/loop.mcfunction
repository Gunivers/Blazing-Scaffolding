#Recursive function building the scaffolding pillar

setblock ~ ~1 ~ green_stained_glass
execute if block ~ ~ ~ #scaffolding_rush:not_scaffoldable run setblock ~ ~1 ~ minecraft:light_gray_stained_glass
execute if block ~ ~ ~ #scaffolding_rush:air positioned ~ ~-1 ~ run function scaffolding_rush:mechanics/instant_pillar/loop
