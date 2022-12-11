tag @s remove flag_carry

execute if entity @s[tag=flagOne] run function scaffolding_rush:flag/claim/white


item replace entity @s armor.head with minecraft:air

tag @s remove flagOne
