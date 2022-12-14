function scaffolding_rush:flag/summon/1

scoreboard players operation @e[type=armor_stand,tag=new,limit=1] global = @s fallDistance

execute as @e[type=minecraft:armor_stand,tag=new,limit=1] at @s run function scaffolding_rush:flag/rise

tag @s remove flagOne
