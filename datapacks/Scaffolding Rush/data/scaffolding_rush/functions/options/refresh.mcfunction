
function scaffolding_rush:lobby/map/refresh
scoreboard players set @a scgui.change 1

#get lavaspeed timer in tics
scoreboard players operation #lava.period.tick options = #lava.period.second options
scoreboard players operation #lava.period.tick options *= 20 const

#get villager respawn timer in tics
scoreboard players operation #villager.respawn.tick options = #villager.respawn.seconds options
scoreboard players operation #villager.respawn.tick options *= 20 const

scoreboard players operation #respawn.delay.tick options = #gameplay.respawn.delay.second options
scoreboard players operation #respawn.delay.tick options *= 20 const