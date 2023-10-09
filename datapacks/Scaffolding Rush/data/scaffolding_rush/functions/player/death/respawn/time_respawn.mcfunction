# Title when the player is respawning

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