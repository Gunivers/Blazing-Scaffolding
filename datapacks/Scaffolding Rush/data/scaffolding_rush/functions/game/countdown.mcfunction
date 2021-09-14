execute as @a at @s run tp @s ~1000 ~ ~1000
gamemode adventure @a[team=!]
gamemode spectator @a[team=]
clear @a
effect clear @a
effect give @a minecraft:instant_health 1 100 true

scoreboard players set GameLobby global 0
scoreboard players set GameLoading global 1

scoreboard players add GameId global 1
scoreboard players operation @a gameId = GameId global

setblock 0 5 7 cave_air

execute if score RandomTeam options matches 1 run function scaffolding_rush:team/join/random

function scaffolding_rush:broadcast/10s

teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 0 270 0
function scaffolding_rush:clear/launch

kill @e[tag=lobbyText]
kill @e[type=falling_block]
kill @e[type=arrow]
kill @e[type=item]

schedule function scaffolding_rush:team/create_base/create 4s

schedule function scaffolding_rush:broadcast/5s 5s
schedule function scaffolding_rush:broadcast/4s 6s
schedule function scaffolding_rush:broadcast/3s 7s
schedule function scaffolding_rush:broadcast/2s 8s
schedule function scaffolding_rush:broadcast/1s 9s
schedule function scaffolding_rush:game/start 10s

#disable trigers
execute as @a run function scaffolding_rush:options/disable_all
execute if score Admin options matches 1 as @a[tag=admin] run scoreboard players enable @s Reset
execute if score Admin options matches 0 run scoreboard players enable @a Reset

#get lavaspeed timer in tics
scoreboard players operation LavaSpeedTics options = LavaSpeed options
scoreboard players operation LavaSpeedTics options *= #20 global

#get villager respawn timer in tics
scoreboard players operation VillagerRespawnTics global = VillagerRespawn options
scoreboard players operation VillagerRespawnTics global *= #20 global

#reset villagers respawn countdowns
scoreboard players set RedVillagerRespawn global -1
scoreboard players set BlueVillagerRespawn global -1
scoreboard players set YellowVillagerRespawn global -1
scoreboard players set GreenVillagerRespawn global -1
