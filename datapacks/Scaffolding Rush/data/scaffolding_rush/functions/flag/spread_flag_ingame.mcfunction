execute store result score CurrentWBSize global run worldborder get

execute positioned 0 0 0 if score CurrentWBSize global matches ..15 run spreadplayers 1000 1000 3 5 false @e[type=armor_stand,tag=spread]
execute positioned 0 0 0 if score CurrentWBSize global matches 15..19 run spreadplayers 1000 1000 5 7 false @e[type=armor_stand,tag=spread]
execute positioned 0 0 0 if score CurrentWBSize global matches 20..34 run spreadplayers 1000 1000 7 10 false @e[type=armor_stand,tag=spread]
execute positioned 0 0 0 if score CurrentWBSize global matches 35..79 run spreadplayers 1000 1000 14 17 false @e[type=armor_stand,tag=spread]
execute positioned 0 0 0 if score CurrentWBSize global matches 80..119 run spreadplayers 1000 1000 35 40 false @e[type=armor_stand,tag=spread]
execute positioned 0 0 0 if score CurrentWBSize global matches 120..165 run spreadplayers 1000 1000 55 60 false @e[type=armor_stand,tag=spread]
tag @e[type=armor_stand,tag=spread] remove spread