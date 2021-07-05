#starts a recursive function to build a scaffolding pillar

setblock ~ ~1 ~ scaffolding destroy

execute store result score @s constant run data get entity @s Pos[1]
scoreboard players operation @s constant -= LavaLevel constant

execute store result entity @s Pos[1] double 1 run scoreboard players get LavaLevel constant
execute at @s run setblock ~ ~ ~ magma_block

execute unless score @s constant matches 0.. at @s positioned ~ ~1 ~ run function loumardes:scaffolding_rush/pillar

kill @s