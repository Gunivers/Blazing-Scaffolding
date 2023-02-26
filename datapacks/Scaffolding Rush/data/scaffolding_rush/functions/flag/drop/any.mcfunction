# When a player drops his flag, as when he is dead
# Return the flag to the playing area and remove it from the player

execute if entity @s[tag=flagOne] run function scaffolding_rush:flag/drop/point/1
execute if entity @s[tag=flagTwo] run function scaffolding_rush:flag/drop/point/2
execute if entity @s[tag=flagFive] run function scaffolding_rush:flag/drop/point/5

tag @e[type=armor_stand,tag=Flag] remove new

item replace entity @s armor.head with air
item replace entity @s weapon.offhand with air

tag @s remove flag_carry
