# Summon a new flag in the playing area

summon area_effect_cloud ~ ~ ~ {Tags:["random"],Age:1}
execute store result score alea global run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
kill @e[type=area_effect_cloud,tag=random]

scoreboard players operation alea global %= #100 global
execute if score alea global matches ..-1 run scoreboard players operation alea global *= #-1 global

summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:0,Tags:["Flag","new","selected"]}

execute if score alea global matches 0..69 as @e[tag=selected,tag=Flag,limit=1] at @s run function scaffolding_rush:flag/summon/1
execute if score alea global matches 70..94 as @e[tag=selected,tag=Flag,limit=1] at @s run function scaffolding_rush:flag/summon/2
execute if score alea global matches 95..100 as @e[tag=selected,tag=Flag,limit=1] at @s run function scaffolding_rush:flag/summon/5

tag @e[tag=selected,tag=Flag] remove selected