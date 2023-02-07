#Recursive function checking blocks below the pillar

setblock ~ ~1 ~ green_stained_glass
execute if block ~ ~ ~ #scaffolding_rush:not_scaffoldable run tag @s add NoSupport
execute if block ~ ~ ~ #scaffolding_rush:air positioned ~ ~-1 ~ run function scaffolding_rush:mechanics/instant_pillar/loop
