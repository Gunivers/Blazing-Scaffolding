execute positioned 0 0 0 if score WBSize options matches 15..19 run spreadplayers 0 0 5 7 false @e[type=minecraft:marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 20..34 run spreadplayers 0 0 7 10 false @e[type=minecraft:marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 35..79 run spreadplayers 0 0 14 17 false @e[type=minecraft:marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 80..119 run spreadplayers 0 0 35 40 false @e[type=minecraft:marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 120..165 run spreadplayers 0 0 55 60 false @e[type=minecraft:marker,tag=spread]
tag @e[type=minecraft:marker,tag=spread] remove spread
