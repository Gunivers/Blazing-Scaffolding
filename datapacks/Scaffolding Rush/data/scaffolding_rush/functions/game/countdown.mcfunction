gamemode adventure @a[team=!]
gamemode spectator @a[team=]
clear @a
effect clear @a
effect give @a minecraft:instant_health 1 100 true
worldborder center 1000 1000
schedule clear scaffolding_rush:lobby/particles

scoreboard players set GameLobby global 0
scoreboard players set GameLoading global 1

scoreboard players add GameId global 1
scoreboard players operation @a gameId = GameId global

setblock 0 5 7 cave_air

function scaffolding_rush:team/random

function scaffolding_rush:game/summon_markers

function scaffolding_rush:broadcast/10s

teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 1000 2 1000

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

scoreboard players operation RespawnDelayTics global = RespawnDelay options
scoreboard players operation RespawnDelayTics global *= #20 global

#reset villagers respawn countdowns
scoreboard players set RedVillagerRespawn global -1
scoreboard players set BlueVillagerRespawn global -1
scoreboard players set YellowVillagerRespawn global -1
scoreboard players set GreenVillagerRespawn global -1

#Reset teams scores, if relevant
execute unless score flag_hunt options matches 0 run scoreboard objectives setdisplay sidebar Score
execute unless score flag_hunt options matches 0 run scoreboard players set Blue Score 0
execute unless score flag_hunt options matches 0 run scoreboard players set Green Score 0
execute unless score flag_hunt options matches 0 run scoreboard players set Red Score 0
execute unless score flag_hunt options matches 0 run scoreboard players set Yellow Score 0

#create the firsts flags to capture in the flaghunt gamemode
execute unless score flag_hunt options matches 0 run function scaffolding_rush:flag/new_spreaded