execute store result score worldborder global run worldborder get
execute if entity @a[team=blue] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Blue"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,CustomName:'{"text":"Blue"}',Tags:["baseTeam","spread"],Invulnerable:1b,Invisible:1b}
execute if entity @a[team=green] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Green"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,CustomName:'{"text":"Green"}',Tags:["baseTeam","spread"],Invulnerable:1b,Invisible:1b}
execute if entity @a[team=red] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Red"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,CustomName:'{"text":"Red"}',Tags:["baseTeam","spread"],Invulnerable:1b,Invisible:1b}
execute if entity @a[team=yellow] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Yellow"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,CustomName:'{"text":"Yellow"}',Tags:["baseTeam","spread"],Invulnerable:1b,Invisible:1b}

execute positioned 0 0 0 if score worldborder global matches 20..39 run spreadplayers 0 0 5 10 false @e[type=minecraft:armor_stand,tag=spread]
execute positioned 0 0 0 if score worldborder global matches 40..89 run spreadplayers 0 0 10 20 false @e[type=minecraft:armor_stand,tag=spread]
execute positioned 0 0 0 if score worldborder global matches 90..159 run spreadplayers 0 0 20 45 false @e[type=minecraft:armor_stand,tag=spread]
execute positioned 0 0 0 if score worldborder global matches 160..239 run spreadplayers 0 0 40 80 false @e[type=minecraft:armor_stand,tag=spread]
execute positioned 0 0 0 if score worldborder global matches 240..360 run spreadplayers 0 0 60 120 false @e[type=minecraft:armor_stand,tag=spread]

execute as @e[tag=baseTeam] at @s run function loumardes:scaffolding_rush/team/create_base/load_structure

function loumardes:scaffolding_rush/team/create_base/armor

effect give @a minecraft:jump_boost 6 254 true

execute at @e[tag=baseTeam,name="Blue",limit=1] run teleport @a[team=blue] ~ 4 ~
execute at @e[tag=baseTeam,name="Green",limit=1] run teleport @a[team=green] ~ 4 ~
execute at @e[tag=baseTeam,name="Red",limit=1] run teleport @a[team=red] ~ 4 ~
execute at @e[tag=baseTeam,name="Yellow",limit=1] run teleport @a[team=yellow] ~ 4 ~

kill @e[tag=baseTeam]
execute as @a run function loumardes:scaffolding_rush/team/base_egg/clear_egg
