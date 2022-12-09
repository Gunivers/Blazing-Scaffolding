tag @s add flag_carry

tag @e[type=armor_stand,tag=Flag,sort=nearest,limit=1] add processed

execute if entity @e[type=armor_stand,tag=processed,tag=whiteFlag] run tag @s add whiteFlag
execute if entity @e[type=armor_stand,tag=processed,tag=whiteFlag] run item replace entity @s armor.head with white_banner

kill @e[type=armor_stand,tag=processed]