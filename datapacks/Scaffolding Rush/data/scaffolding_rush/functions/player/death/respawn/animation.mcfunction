
# say player/death/respawn/animation @s

title @s[scores={option.language=0}] title ["",{"text":"Respawning...","color":"red"}]
title @s[scores={option.language=1}] title ["",{"text":"Réapparition...","color":"red"}]

# Progress bar ----------------------------------------------------------------

scoreboard players operation #seconds tmp = @s respawn.timer
scoreboard players operation #seconds tmp *= 10 const
scoreboard players operation #seconds tmp /= #respawn.delay.tick options

execute if score #seconds tmp matches 9.. run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"dark_red"}]
execute if score #seconds tmp matches 8 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6","color":"gray"}]
execute if score #seconds tmp matches 7 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6","color":"gray"}]
execute if score #seconds tmp matches 6 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6","color":"gray"}]
execute if score #seconds tmp matches 5 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6\u25c6","color":"gray"}]
execute if score #seconds tmp matches 4 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6","color":"gray"}]
execute if score #seconds tmp matches 3 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"gray"}]
execute if score #seconds tmp matches 2 run title @s subtitle ["",{"text":"\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"gray"}]
execute if score #seconds tmp matches 1 run title @s subtitle ["",{"text":"\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"gray"}]

# Force spectate villager -----------------------------------------------------

spectate @e[type=villager,tag=respawn_villager,tag=red_villager,limit=1,sort=nearest,distance=..500] @s[team=red]
spectate @e[type=villager,tag=respawn_villager,tag=blue_villager,limit=1,sort=nearest,distance=..500] @s[team=blue]
spectate @e[type=villager,tag=respawn_villager,tag=green_villager,limit=1,sort=nearest,distance=..500] @s[team=green]
spectate @e[type=villager,tag=respawn_villager,tag=yellow_villager,limit=1,sort=nearest,distance=..500] @s[team=yellow]

execute if score @s respawn.timer matches 1 at @s run function scaffolding_rush:player/death/respawn/stop