execute if entity @a[team=blue] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Blue"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,CustomName:'{"text":"Blue"}',Tags:["baseTeam","spread"],Invulnerable:1b,Invisible:1b}
execute if entity @a[team=green] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Green"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,CustomName:'{"text":"Green"}',Tags:["baseTeam","spread"],Invulnerable:1b,Invisible:1b}
execute if entity @a[team=red] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Red"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,CustomName:'{"text":"Red"}',Tags:["baseTeam","spread"],Invulnerable:1b,Invisible:1b}
execute if entity @a[team=yellow] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Yellow"] run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,CustomName:'{"text":"Yellow"}',Tags:["baseTeam","spread"],Invulnerable:1b,Invisible:1b}

execute positioned 0 0 0 if score WBSize options matches 15..19 run spreadplayers 0 0 5 7 false @e[type=minecraft:armor_stand,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 20..34 run spreadplayers 0 0 7 10 false @e[type=minecraft:armor_stand,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 35..79 run spreadplayers 0 0 14 17 false @e[type=minecraft:armor_stand,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 80..119 run spreadplayers 0 0 35 40 false @e[type=minecraft:armor_stand,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 120..165 run spreadplayers 0 0 55 60 false @e[type=minecraft:armor_stand,tag=spread]

execute as @e[tag=baseTeam] at @s run function scaffolding_rush:scaffolding_rush/team/create_base/load_structure

function scaffolding_rush:scaffolding_rush/team/create_base/armor

effect give @a minecraft:jump_boost 6 254 true

execute at @e[tag=baseTeam,name="Blue",limit=1] run teleport @a[team=blue] ~ 4 ~
execute at @e[tag=baseTeam,name="Green",limit=1] run teleport @a[team=green] ~ 4 ~
execute at @e[tag=baseTeam,name="Red",limit=1] run teleport @a[team=red] ~ 4 ~
execute at @e[tag=baseTeam,name="Yellow",limit=1] run teleport @a[team=yellow] ~ 4 ~

kill @e[tag=baseTeam]
execute as @a run function scaffolding_rush:scaffolding_rush/lobby/base_egg/clear_egg

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:scaffolding_rush/game/build_limit
