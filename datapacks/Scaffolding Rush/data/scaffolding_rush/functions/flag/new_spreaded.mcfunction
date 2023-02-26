execute positioned as @e[type=marker,name="ScR_LavaLevel",limit=1] run function scaffolding_rush:flag/summon/random
execute positioned as @e[type=marker,name="ScR_LavaLevel",limit=1] run function scaffolding_rush:flag/summon/random
execute positioned as @e[type=marker,name="ScR_LavaLevel",limit=1] run function scaffolding_rush:flag/summon/random
execute positioned as @e[type=marker,name="ScR_LavaLevel",limit=1] run function scaffolding_rush:flag/summon/random

tag @e[type=minecraft:armor_stand,tag=new] add spread

function scaffolding_rush:flag/spread_flag_ingame

execute as @e[type=minecraft:armor_stand,tag=new] store result score @s global run data get entity @s UUID[1]
scoreboard players operation @e[type=minecraft:armor_stand,tag=new] global %= BuildHeight options

execute as @e[type=minecraft:armor_stand,tag=new] at @s run function scaffolding_rush:flag/rise

tag @e[type=minecraft:armor_stand,tag=new] remove new

scoreboard players set FlagTakeOverCountdown global 0

