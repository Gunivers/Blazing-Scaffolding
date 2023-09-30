gamemode adventure @a[team=!]
gamemode spectator @a[team=]
execute as @a run function scaffolding_rush:item/clear_items
effect clear @a
effect give @a minecraft:instant_health 1 100 true
execute if score Regen options matches 1 run effect give @s regeneration infinite 0 true
worldborder center 1000 1000
schedule clear scaffolding_rush:lobby/particles

scoreboard players set GameLobby global 0
scoreboard players set GameLoading global 1

scoreboard players add GameId global 1
scoreboard players operation @a gameId = GameId global


#function scaffolding_rush:team/random

function scaffolding_rush:game/summon_markers

function scaffolding_rush:broadcast/10s

teleport @e[type=marker,name="ScR_LavaLevel",limit=1] 1000 2 1000

kill @e[type=falling_block]
kill @e[type=arrow]
kill @e[type=item]


# Unload the tutorial world
function scaffolding_rush:tutorial/unload

schedule function scaffolding_rush:team/create_base/create 2.5s

schedule function scaffolding_rush:broadcast/5s 5s
schedule function scaffolding_rush:broadcast/4s 6s
schedule function scaffolding_rush:broadcast/3s 7s
schedule function scaffolding_rush:broadcast/2s 8s
schedule function scaffolding_rush:broadcast/1s 9s
schedule function scaffolding_rush:game/start 10s

#disable trigers
execute as @a run function scaffolding_rush:options/disable_all
scoreboard players reset @s tuto
execute if score Admin options matches 1 as @a[tag=admin] run scoreboard players enable @s Reset
execute if score Admin options matches 0 run scoreboard players enable @a Reset

#reset the time
scoreboard players set GameTimeTics global 0

#initialize the countdown in tics
scoreboard players operation TimeLeftTicks timer = TimeLimit options
scoreboard players operation TimeLeftTicks timer *= #20 global
scoreboard players operation TimeLeftTicks timer *= #60 global

#get lavaspeed timer in tics
scoreboard players operation LavaSpeedTics options = LavaSpeed options
scoreboard players operation LavaSpeedTics options *= #20 global

#get villager respawn timer in tics
scoreboard players operation VillagerRespawnTics global = VillagerRespawn options
scoreboard players operation VillagerRespawnTics global *= #20 global

scoreboard players operation RespawnDelayTics global = RespawnDelay options
scoreboard players operation RespawnDelayTics global *= #20 global

#initialize the wordborder start time in tics
scoreboard players operation WorldborderStartTimeTics global = WorldborderStartTime options
scoreboard players operation WorldborderStartTimeTics global *= #20 global
scoreboard players operation WorldborderStartTimeTics global *= #60 global
execute if score WorldborderStartTime options matches 0 run scoreboard players operation WorldborderStartTimeTics global = #1 const


#reset villagers respawn countdowns
scoreboard players set RedVillagerRespawn global -1
scoreboard players set BlueVillagerRespawn global -1
scoreboard players set YellowVillagerRespawn global -1
scoreboard players set GreenVillagerRespawn global -1

#Reset teams scores, if relevant
execute unless score FlagTakeOver options matches 0 run scoreboard objectives setdisplay sidebar Score
execute if score FlagTakeOver options matches 0 run scoreboard objectives setdisplay sidebar
scoreboard players reset Blue Score
scoreboard players reset Green Score
scoreboard players reset Red Score
scoreboard players reset Yellow Score
execute unless score FlagTakeOver options matches 0 if entity @a[team=blue] run scoreboard players set Blue Score 0
execute unless score FlagTakeOver options matches 0 if entity @a[team=green] run scoreboard players set Green Score 0
execute unless score FlagTakeOver options matches 0 if entity @a[team=red] run scoreboard players set Red Score 0
execute unless score FlagTakeOver options matches 0 if entity @a[team=yellow] run scoreboard players set Yellow Score 0

#create the firsts flags to capture in the flaghunt gamemode
execute unless score FlagTakeOver options matches 0 run function scaffolding_rush:game/flag/new_spreaded