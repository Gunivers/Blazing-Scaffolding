execute positioned 0 0 0 run function scaffolding_rush:flag/summon
execute positioned 0 0 0 run function scaffolding_rush:flag/summon
execute positioned 0 0 0 run function scaffolding_rush:flag/summon
execute positioned 0 0 0 run function scaffolding_rush:flag/summon

tag @e[type=armor_stand,tag=new] add spread

function scaffolding_rush:spread_in_border

execute as @e[type=armor_stand,tag=new] store result score @s global run data get entity @s UUID[1]
scoreboard players operation @e[type=armor_stand,tag=new] global %= BuildHeight options

execute as @e[type=armor_stand,tag=new] at @s run function scaffolding_rush:flag/rise

tag @e[type=armor_stand,tag=new] remove new

