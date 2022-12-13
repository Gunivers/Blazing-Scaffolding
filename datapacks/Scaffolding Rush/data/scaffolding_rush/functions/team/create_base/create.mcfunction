execute if entity @a[team=blue] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Blue"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Blue"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=green] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Green"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Green"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=red] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Red"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Red"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=yellow] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Yellow"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Yellow"}', Tags: ["baseTeam", "spread"]}

execute at @e[type=minecraft:armor_stand,tag=baseTeam,name="Blue"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Blue"}', Tags: ["baseTeam", "spread"]}
execute at @e[type=minecraft:armor_stand,tag=baseTeam,name="Green"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Green"}', Tags: ["baseTeam", "spread"]}
execute at @e[type=minecraft:armor_stand,tag=baseTeam,name="Red"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Red"}', Tags: ["baseTeam", "spread"]}
execute at @e[type=minecraft:armor_stand,tag=baseTeam,name="Yellow"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Yellow"}', Tags: ["baseTeam", "spread"]}

kill @e[type=armor_stand,tag=baseTeam]

function scaffolding_rush:spread_in_border

execute as @e[tag=baseTeam] at @s run tp @s ~1000 ~2 ~1000
execute as @e[tag=baseTeam] at @s run teleport @s ~ 4 ~

execute as @e[tag=baseTeam] at @s run function scaffolding_rush:team/create_base/load_structure

function scaffolding_rush:team/create_base/armor

effect give @a minecraft:jump_boost 6 254 true

execute at @e[tag=baseTeam,name="Blue",limit=1] run teleport @a[team=blue] ~ 4 ~
execute at @e[tag=baseTeam,name="Green",limit=1] run teleport @a[team=green] ~ 4 ~
execute at @e[tag=baseTeam,name="Red",limit=1] run teleport @a[team=red] ~ 4 ~
execute at @e[tag=baseTeam,name="Yellow",limit=1] run teleport @a[team=yellow] ~ 4 ~
tag @a[team=!] add InGame

execute as @a[team=] at @s run function scaffolding_rush:game/tp_to_game

execute as @e[type=villager,tag=LobbyBase] run function scaffolding_rush:clean_kill
execute as @a run function scaffolding_rush:lobby/base_egg/clear_egg

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/build_limit
