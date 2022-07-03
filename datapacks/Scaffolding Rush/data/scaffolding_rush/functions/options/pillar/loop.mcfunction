#Recursive function building the scaffolding pillar

setblock ~ ~1 ~ green_stained_glass
execute if block ~ ~ ~ #scaffolding_rush:nonscaffoldable positioned ~ ~-1 ~ run function scaffolding_rush:options/pillar/loop
