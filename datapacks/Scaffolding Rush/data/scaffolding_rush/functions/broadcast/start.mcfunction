title @a times 0 20 0
execute if score Language global matches 0 run title @a title {"text":"Here we go !","color":"gold"}
execute if score Language global matches 1 run title @a title {"text":"C'est parti !","color":"gold"}
execute as @a at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1000 2 1

#Bossbar
execute if score UseTimeLimit options matches 0 run bossbar set minecraft:filling_lava players @a
execute if score UseTimeLimit options matches 0 run bossbar set minecraft:filling_lava visible true
execute if score UseTimeLimit options matches 0 run execute store result bossbar filling_lava max run scoreboard players get LavaSpeedTics options

execute unless score UseTimeLimit options matches 0 run bossbar set minecraft:time_limit players @a
execute unless score UseTimeLimit options matches 0 run bossbar set minecraft:time_limit visible true
execute unless score UseTimeLimit options matches 0 run execute store result bossbar time_limit max run scoreboard players get TimeLeftTicks global
