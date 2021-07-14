#Recursive function building the scaffolding pillar

setblock ~ ~1 ~ green_stained_glass
execute if block ~ ~ ~ #loumardes:nonscaffoldable positioned ~ ~-1 ~ run function loumardes:scaffolding_rush/pillar/loop
