execute store result score worldborder global run worldborder get
execute unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="blue"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:2237923}}},{id:"leather_leggings",Count:1b,tag:{display:{color:2237923}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:2237923}}},{id:"blue_concrete",Count:1b}],HandItems:[{},{}],CustomName:'{"text":"Blue","color":"blue"}',CustomNameVisible:1b,Tags:["baseTeam"],DisabledSlots:4144959}
execute unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="green"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3334946}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3334946}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3334946}}},{id:"lime_concrete",Count:1b}],HandItems:[{},{}],CustomName:'{"text":"Green","color":"green"}',CustomNameVisible:1b,Tags:["baseTeam"],DisabledSlots:4144959}
execute unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="red"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:14885410}}},{id:"leather_leggings",Count:1b,tag:{display:{color:14885410}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:14885410}}},{id:"red_concrete",Count:1b}],HandItems:[{},{}],CustomName:'{"text":"Red","color":"red"}',CustomNameVisible:1b,Tags:["baseTeam"],DisabledSlots:4144959}
execute unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="yellow"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:14925858}}},{id:"leather_leggings",Count:1b,tag:{display:{color:14925858}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:14925858}}},{id:"yellow_concrete",Count:1b}],HandItems:[{},{}],CustomName:'{"text":"Yellow","color":"yellow"}',CustomNameVisible:1b,Tags:["baseTeam"],DisabledSlots:4144959}

execute if score worldborder global matches 20..39 run spreadplayers 0 0 5 10 false @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1]
execute if score worldborder global matches 40..89 run spreadplayers 0 0 10 20 false @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1]
execute if score worldborder global matches 90..159 run spreadplayers 0 0 20 45 false @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1]
execute if score worldborder global matches 160..239 run spreadplayers 0 0 40 80 false @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1]
execute if score worldborder global matches 240..360 run spreadplayers 0 0 60 120 false @e[type=minecraft:armor_stand,tag=baseTeam,distance=..1]

execute as @e[tag=baseTeam] at @s run function loumardes:scaffolding_rush/team/create_base/load_structure

function loumardes:scaffolding_rush/team/create_base/armor

execute at @e[tag=baseTeam,name="Blue",limit=1] run teleport @a[team=blue] ~ 4 ~
execute at @e[tag=baseTeam,name="Green",limit=1] run teleport @a[team=green] ~ 4 ~
execute at @e[tag=baseTeam,name="Red",limit=1] run teleport @a[team=red] ~ 4 ~
execute at @e[tag=baseTeam,name="Yellow",limit=1] run teleport @a[team=yellow] ~ 4 ~

kill @e[tag=baseTeam]
execute as @a run function loumardes:scaffolding_rush/team/base_egg/clear_egg
