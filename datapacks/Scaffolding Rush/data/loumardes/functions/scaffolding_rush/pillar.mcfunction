#Recursive function building the scaffolding pillar

setblock ~ ~ ~ scaffolding destroy
particle lava ~ ~ ~ 0 0 0 1 1
say ok

scoreboard players remove @s constant 1

execute unless score @s constant matches 0.. positioned ~ ~1 ~ run function loumardes:scaffolding_rush/pillar

