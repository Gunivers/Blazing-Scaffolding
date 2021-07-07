#starts a recursive function to build a scaffolding pillar

#setblock ~ ~1 ~ scaffolding destroy

execute store result score @s global run data get entity @s Pos[1]
scoreboard players operation @s global -= LavaLevel global

execute store result entity @s Pos[1] double 1 run scoreboard players get LavaLevel global
execute at @s run setblock ~ ~ ~ magma_block

execute unless score @s global matches ..0 at @s positioned ~ ~1 ~ run function loumardes:scaffolding_rush/pillar

kill @s