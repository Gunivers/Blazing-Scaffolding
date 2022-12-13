execute if entity @s[tag=flagOne] at @s run function scaffolding_rush:flag/drop/point/1
execute if entity @s[tag=flagTwo] at @s run function scaffolding_rush:flag/drop/point/2
execute if entity @s[tag=flagFive] at @s run function scaffolding_rush:flag/drop/point/5

item replace entity @s armor.head with air
item replace entity @s weapon.offhand with air

tag @s remove flag_carry
