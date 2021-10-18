scoreboard players operation @s respawnTime = @s killed
scoreboard players operation @s respawnTime *= #10 global
scoreboard players operation @s respawnTime /= RespawnDelayTics global

execute if score @s respawnTime matches 9.. run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"dark_red"}]
execute if score @s respawnTime matches 8 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6","color":"gray"}]
execute if score @s respawnTime matches 7 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6","color":"gray"}]
execute if score @s respawnTime matches 6 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6","color":"gray"}]
execute if score @s respawnTime matches 5 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6\u25c6","color":"gray"}]
execute if score @s respawnTime matches 4 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6","color":"gray"}]
execute if score @s respawnTime matches 3 run title @s subtitle ["",{"text":"\u25c6\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"gray"}]
execute if score @s respawnTime matches 2 run title @s subtitle ["",{"text":"\u25c6\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"gray"}]
execute if score @s respawnTime matches 1 run title @s subtitle ["",{"text":"\u25c6","color":"dark_red"},{"text":"\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6\u25c6","color":"gray"}]