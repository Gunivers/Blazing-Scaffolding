

#height risen since start
scoreboard players operation LavaLevel*1000 global = GameTimeTics global
scoreboard players operation LavaLevel*1000 global /= LavaSpeedTics global

#casse of 0 movement
execute if score LavaSpeed global matches 0 run scoreboard players set LavaLevel*1000 global 0

#starting height
scoreboard players add LavaLevel*1000 global 2000
