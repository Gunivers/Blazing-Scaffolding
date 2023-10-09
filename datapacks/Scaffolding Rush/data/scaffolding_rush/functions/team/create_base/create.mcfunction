
# Place a volcano in the middle and rise one layer of lava
place template scaffolding_rush:volcano 993 2 993
execute as @e[type=marker,name="lava.level"] at @s run function scaffolding_rush:game/lava/rise_globally

execute if entity @a[team=blue] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Blue"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Blue"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=green] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Green"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Green"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=red] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Red"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Red"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=yellow] unless entity @e[type=minecraft:armor_stand,tag=baseTeam,name="Yellow"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Yellow"}', Tags: ["baseTeam", "spread"]}

execute at @e[type=minecraft:armor_stand,tag=baseTeam,name="Blue"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Blue"}', Tags: ["baseTeam", "spread"]}
execute at @e[type=minecraft:armor_stand,tag=baseTeam,name="Green"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Green"}', Tags: ["baseTeam", "spread"]}
execute at @e[type=minecraft:armor_stand,tag=baseTeam,name="Red"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Red"}', Tags: ["baseTeam", "spread"]}
execute at @e[type=minecraft:armor_stand,tag=baseTeam,name="Yellow"] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Yellow"}', Tags: ["baseTeam", "spread"]}

kill @e[type=armor_stand,tag=baseTeam]

# Spread in borders
execute positioned 0 0 0 if score WBSize options matches 15..19 run spreadplayers 0 0 5 7 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 20..34 run spreadplayers 0 0 7 10 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 35..79 run spreadplayers 0 0 14 17 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 80..119 run spreadplayers 0 0 35 40 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 120..165 run spreadplayers 0 0 55 60 false @e[type=marker,tag=spread]
tag @e[type=marker,tag=spread] remove spread

execute as @e[tag=baseTeam] at @s run tp @s ~1000 4 ~1000

execute as @e[tag=baseTeam] at @s run function scaffolding_rush:team/create_base/load_structure

execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Blue"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:game/villager/summon/blue
execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Green"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:game/villager/summon/green
execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Red"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:game/villager/summon/red
execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Yellow"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:game/villager/summon/yellow

team join blue @e[type=villager,tag=new_villager,tag=blue_villager]
team join green @e[type=villager,tag=new_villager,tag=green_villager]
team join red @e[type=villager,tag=new_villager,tag=red_villager]
team join yellow @e[type=villager,tag=new_villager,tag=yellow_villager]
tag @e[type=villager,tag=new_villager] remove new_villager

function scaffolding_rush:team/create_base/armor

effect give @a minecraft:jump_boost infinite 254 true

execute at @e[tag=baseTeam,name="Blue",limit=1] run teleport @a[team=blue] ~ 4 ~
execute at @e[tag=baseTeam,name="Green",limit=1] run teleport @a[team=green] ~ 4 ~
execute at @e[tag=baseTeam,name="Red",limit=1] run teleport @a[team=red] ~ 4 ~
execute at @e[tag=baseTeam,name="Yellow",limit=1] run teleport @a[team=yellow] ~ 4 ~
tag @a[team=!spectator] add InGame

execute at @e[tag=baseTeam,name="Blue",limit=1] run spawnpoint @a[team=blue] ~ 4 ~
execute at @e[tag=baseTeam,name="Green",limit=1] run spawnpoint @a[team=green] ~ 4 ~
execute at @e[tag=baseTeam,name="Red",limit=1] run spawnpoint @a[team=red] ~ 4 ~
execute at @e[tag=baseTeam,name="Yellow",limit=1] run spawnpoint @a[team=yellow] ~ 4 ~

execute as @a[team=,tag=!InGame] at @s run function scaffolding_rush:game/tp_to_game

execute as @e[type=villager,tag=LobbyBase] run function utils:clean_kill
execute as @a run function scaffolding_rush:lobby/base_egg/clear_egg

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/build_limit
