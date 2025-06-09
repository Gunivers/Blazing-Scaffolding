execute positioned as @e[type=marker,name="lava.level",limit=1] run function scaffolding_rush:game/flag/summon/random
execute positioned as @e[type=marker,name="lava.level",limit=1] run function scaffolding_rush:game/flag/summon/random
execute positioned as @e[type=marker,name="lava.level",limit=1] run function scaffolding_rush:game/flag/summon/random
execute positioned as @e[type=marker,name="lava.level",limit=1] run function scaffolding_rush:game/flag/summon/random

tag @e[type=minecraft:armor_stand,tag=new] add spread

function scaffolding_rush:game/flag/spread_flag_ingame

execute as @e[type=minecraft:armor_stand,tag=new] store result score @s data run data get entity @s UUID[1]
scoreboard players operation @e[type=minecraft:armor_stand,tag=new] data %= #map.build_height options

execute as @e[type=minecraft:armor_stand,tag=new] at @s run function scaffolding_rush:game/flag/rise

tag @e[type=minecraft:armor_stand,tag=new] remove new

scoreboard players set #flag.take_overCountdown data 0

