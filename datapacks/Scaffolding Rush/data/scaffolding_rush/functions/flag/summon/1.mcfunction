#summon marker ~ ~ ~
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:0,Tags:["Flag","flagOne","new"]}
execute as @e[distance=..1,type=armor_stand,tag=Flag,tag=new] run function scaffolding_rush:flag/banner/one
execute as @e[distance=..1,type=armor_stand,tag=Flag,tag=new,limit=1] store result entity @s Rotation[0] float 360 run data get entity @s UUID[0]