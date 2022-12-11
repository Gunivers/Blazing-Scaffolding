tag @s add flag_carry

tag @e[type=armor_stand,tag=Flag,sort=nearest,limit=1] add processed

execute if entity @e[type=armor_stand,tag=processed,tag=flagOne] run tag @s add flagOne
execute if entity @e[type=armor_stand,tag=processed,tag=flagOne] run function scaffolding_rush:flag/banner/one

kill @e[type=armor_stand,tag=processed]