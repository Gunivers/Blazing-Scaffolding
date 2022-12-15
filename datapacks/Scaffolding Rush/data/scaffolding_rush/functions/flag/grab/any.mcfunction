# When a player grab a flag
# Remove it from the playing area, give it to the player in his helmet slot and his offhand

tag @s add flag_carry

tag @e[type=armor_stand,tag=Flag,sort=nearest,limit=1] add processed

teleport @e[type=armor_stand,tag=processed] @s
playsound entity.item.pickup ambient @s ~ ~ ~ 10 1 1

execute if entity @e[type=armor_stand,tag=processed,tag=flagOne] run function scaffolding_rush:flag/grab/point/1
execute if entity @e[type=armor_stand,tag=processed,tag=flagTwo] run function scaffolding_rush:flag/grab/point/2
execute if entity @e[type=armor_stand,tag=processed,tag=flagFive] run function scaffolding_rush:flag/grab/point/5

kill @e[type=armor_stand,tag=processed]