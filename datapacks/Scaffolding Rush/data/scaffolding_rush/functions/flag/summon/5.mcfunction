
summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:0,Tags:["Flag","new","selected"]}

tag @e[type=armor_stand,tag=selected,tag=Flag,limit=1] add flagFive
execute as @e[type=armor_stand,tag=selected,tag=Flag,limit=1] run function scaffolding_rush:flag/banner/head/5
execute as @e[type=armor_stand,tag=selected,tag=Flag,limit=1] store result entity @s Rotation[0] float 1 run data get entity @s UUID[0]

tag @e[type=armor_stand,tag=selected,tag=Flag,limit=1] remove selected
