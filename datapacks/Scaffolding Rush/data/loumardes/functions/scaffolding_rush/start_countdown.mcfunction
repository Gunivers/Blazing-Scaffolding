
scoreboard players set GameLoading constant 1

function loumardes:scaffolding_rush/villager/give/all

gamemode spectator @a[team=]

function loumardes:scaffolding_rush/broadcast/10s

schedule function loumardes:scaffolding_rush/launch_clear 1s
kill @e[tag=lobbyText]

schedule function loumardes:scaffolding_rush/team/create_base/create 4s

schedule function loumardes:scaffolding_rush/broadcast/5s 5s
schedule function loumardes:scaffolding_rush/broadcast/4s 6s
schedule function loumardes:scaffolding_rush/broadcast/3s 7s
schedule function loumardes:scaffolding_rush/broadcast/2s 8s
schedule function loumardes:scaffolding_rush/broadcast/1s 9s
schedule function loumardes:scaffolding_rush/start_game 10s

#disable trigers
scoreboard players reset @a opt_lava_speed
scoreboard players reset @a opt_build_height
scoreboard players reset @a opt_gravel
scoreboard players reset @a opt_snowball
scoreboard players reset @a opt_vil_respawn
scoreboard players reset @a opt_vil_resp_cd
scoreboard players reset @a opt_instant_pil



#get villager respawn timer in tics
scoreboard players operation VillagerRespawnTics constant = VillagerRespawn constant
scoreboard players operation VillagerRespawnTics constant *= 20 constant

#reset villagers respawn countdowns
scoreboard players set RedVillagerRespawn constant -1
scoreboard players set BlueVillagerRespawn constant -1
scoreboard players set YellowVillagerRespawn constant -1
scoreboard players set GreenVillagerRespawn constant -1
