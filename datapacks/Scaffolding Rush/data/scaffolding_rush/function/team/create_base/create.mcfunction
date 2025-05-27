
# Place a volcano in the middle and rise one layer of lava
place template scaffolding_rush:volcano 994 2 994
execute as @e[type=marker,name="lava.level"] at @s run function scaffolding_rush:game/lava/rise_globally

execute if entity @a[team=blue] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Blue"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=green] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Green"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=red] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Red"}', Tags: ["baseTeam", "spread"]}
execute if entity @a[team=yellow] run summon minecraft:marker 0 0 0 {CustomName: '{"text":"Yellow"}', Tags: ["baseTeam", "spread"]}

# Spread in borders (2 blocks away from it)
execute positioned 0 0 0 if score WBSize options matches ..24 run spreadplayers 0 0 10 10 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 25..29 run spreadplayers 0 0 10 10 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 30..34 run spreadplayers 0 0 12 12 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 35..39 run spreadplayers 0 0 15 15 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 40..44 run spreadplayers 0 0 17 17 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 45..49 run spreadplayers 0 0 20 20 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 50..54 run spreadplayers 0 0 22 22 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 55..59 run spreadplayers 0 0 25 25 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 60..64 run spreadplayers 0 0 27 27 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 65..69 run spreadplayers 0 0 30 30 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 70..74 run spreadplayers 0 0 32 32 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 75..79 run spreadplayers 0 0 35 35 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 80..84 run spreadplayers 0 0 37 37 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 85..89 run spreadplayers 0 0 40 40 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 90..94 run spreadplayers 0 0 42 42 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 95..99 run spreadplayers 0 0 45 45 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 100..104 run spreadplayers 0 0 47 47 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 105..109 run spreadplayers 0 0 50 50 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 110..114 run spreadplayers 0 0 52 52 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 115..119 run spreadplayers 0 0 55 55 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 120..124 run spreadplayers 0 0 57 57 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 125..129 run spreadplayers 0 0 60 60 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 130..134 run spreadplayers 0 0 62 62 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 135..139 run spreadplayers 0 0 65 65 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 140..144 run spreadplayers 0 0 67 67 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 145..149 run spreadplayers 0 0 70 70 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 150..154 run spreadplayers 0 0 72 72 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 155..159 run spreadplayers 0 0 75 75 false @e[type=marker,tag=spread]
execute positioned 0 0 0 if score WBSize options matches 160..164 run spreadplayers 0 0 77 77 false @e[type=marker,tag=spread]
tag @e[type=marker,tag=spread] remove spread

# Sync with lobby position if villager exist
execute at @e[tag=respawn_villager,tag=red_villager] run tp @e[type=marker,tag=baseTeam,name="Red"] ~ 3 ~
execute at @e[tag=respawn_villager,tag=blue_villager] run tp @e[type=marker,tag=baseTeam,name="Blue"] ~ 3 ~
execute at @e[tag=respawn_villager,tag=green_villager] run tp @e[type=marker,tag=baseTeam,name="Green"] ~ 3 ~
execute at @e[tag=respawn_villager,tag=yellow_villager] run tp @e[type=marker,tag=baseTeam,name="Yellow"] ~ 3 ~

execute as @e[tag=baseTeam] at @s run tp @s ~1000 5 ~1000

execute as @e[tag=baseTeam] at @s run function scaffolding_rush:team/create_base/load_structure

execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Blue"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:villager/summon/blue
execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Green"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:villager/summon/green
execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Red"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:villager/summon/red
execute if score #villager.enabled options matches 1 as @e[tag=baseTeam,name="Yellow"] at @s positioned ~1 ~ ~1 run function scaffolding_rush:villager/summon/yellow

team join blue @e[type=villager,tag=new_villager,tag=blue_villager]
team join green @e[type=villager,tag=new_villager,tag=green_villager]
team join red @e[type=villager,tag=new_villager,tag=red_villager]
team join yellow @e[type=villager,tag=new_villager,tag=yellow_villager]
tag @e[type=villager,tag=new_villager] remove new_villager

execute as @a at @s run function scaffolding_rush:team/create_base/armor

effect give @a minecraft:jump_boost infinite 254 true

execute at @e[tag=baseTeam,name="Blue",limit=1] run teleport @a[team=blue] ~ 5 ~
execute at @e[tag=baseTeam,name="Green",limit=1] run teleport @a[team=green] ~ 5 ~
execute at @e[tag=baseTeam,name="Red",limit=1] run teleport @a[team=red] ~ 5 ~
execute at @e[tag=baseTeam,name="Yellow",limit=1] run teleport @a[team=yellow] ~ 5 ~
tag @a[team=!spectator] add InGame

execute as @e[type=villager,tag=LobbyBase] run function utils:clean_kill

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/build_limit
