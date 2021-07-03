
tp @s ~ ~ ~

setblock ~ ~ ~ scaffolding destroy

execute store result score @s constant run data get entity @s Pos[1]
tellraw @a ["",{"score":{"name":"@s","objective":"constant"}}]

execute if score @s constant = LavaLevel constant run setblock ~ ~ ~ magma_block
execute if score @s constant = LavaLevel constant run kill @s
execute unless score @s constant = LavaLevel constant positioned ~ ~-1 ~ run function loumardes:scaffolding_rush/pillar

