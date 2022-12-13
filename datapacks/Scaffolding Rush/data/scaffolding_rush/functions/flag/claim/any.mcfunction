# When a flag held by a player is given to the villager

execute if entity @s[tag=flagOne] run function scaffolding_rush:flag/claim/point/1
execute if entity @s[tag=flagTwo] run function scaffolding_rush:flag/claim/point/2
execute if entity @s[tag=flagFive] run function scaffolding_rush:flag/claim/point/5

item replace entity @s armor.head with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

tag @s remove flag_carry
