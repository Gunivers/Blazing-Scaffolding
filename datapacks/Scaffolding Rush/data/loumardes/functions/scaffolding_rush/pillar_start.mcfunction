#starts a recursive function to build a scaffolding pillar

#setblock ~ ~1 ~ scaffolding destroy
fill ~ 0 ~ ~ ~ ~ scaffolding replace air
setblock ~ ~1 ~ scaffolding

#execute store result score @s global run data get entity @s Pos[1]
#scoreboard players operation @s global -= LavaLevel global
#
#execute store result entity @s Pos[1] double 1 run scoreboard players get LavaLevel global
#execute at @s run setblock ~ ~ ~ magma_block
#
#execute unless score @s global matches ..0 at @s positioned ~ ~1 ~ run function loumardes:scaffolding_rush/pillar
##execute if block ~ ~ ~ air at @s positioned ~ ~1 ~ run function loumardes:scaffolding_rush/pillar
#
#setblock ~ ~1 ~ red_stained_glass destroy
#
#fill ~ 1 ~ ~ 100 ~ scaffolding replace red_stained_glass

kill @s
kill @e[type=falling_block]