gamemode adventure @a[team=!]

clear @a
scoreboard players set GameLobby global 0
scoreboard players set GameLoading global 1

scoreboard players add GameId global 1
scoreboard players operation @a gameId = GameId global

setblock 0 5 7 cave_air

function loumardes:scaffolding_rush/broadcast/10s

schedule function loumardes:scaffolding_rush/clear/launch 2s

kill @e[tag=lobbyText]
gamemode spectator @a[team=]

schedule function loumardes:scaffolding_rush/team/create_base/create 4s

schedule function loumardes:scaffolding_rush/broadcast/5s 5s
schedule function loumardes:scaffolding_rush/broadcast/4s 6s
schedule function loumardes:scaffolding_rush/broadcast/3s 7s
schedule function loumardes:scaffolding_rush/broadcast/2s 8s
schedule function loumardes:scaffolding_rush/broadcast/1s 9s
schedule function loumardes:scaffolding_rush/game/start 10s

#disable trigers
function loumardes:scaffolding_rush/options/disable_all

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
