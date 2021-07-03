
scoreboard players set GameRunning constant 1
function loumardes:scaffolding_rush/villager/give/all

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
