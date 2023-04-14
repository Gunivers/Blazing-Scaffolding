summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:0,Tags:["Flag","new","selected","flagFive"]}

execute as @e[type=armor_stand,tag=selected,tag=Flag,limit=1] run function scaffolding_rush:flag/banner/head/5

tag @e[type=armor_stand,tag=selected,tag=Flag,limit=1] remove selected
