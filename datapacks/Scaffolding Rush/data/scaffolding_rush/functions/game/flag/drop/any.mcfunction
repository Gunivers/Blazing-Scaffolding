# When a player drops his flag, as when he is dead
# Return the flag to the playing area and remove it from the player

execute if entity @s[tag=flagOne] run function scaffolding_rush:game/flag/drop/point/1
execute if entity @s[tag=flagTwo] run function scaffolding_rush:game/flag/drop/point/2
execute if entity @s[tag=flagFive] run function scaffolding_rush:game/flag/drop/point/5

#rise the summoned armor stand (the function is executed as the player)
scoreboard players operation @s fallDistance /= #100 global
execute unless score @s fallDistance matches 3.. run scoreboard players set @s fallDistance 3
scoreboard players operation @e[type=armor_stand,tag=new] global = @s fallDistance
execute as @e[type=minecraft:armor_stand,tag=new] at @s run function scaffolding_rush:game/flag/rise

tag @e[type=armor_stand,tag=Flag] remove new

item replace entity @s armor.head with air
item replace entity @s weapon.offhand with air

tag @s remove flag_carry
