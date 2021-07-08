#Recursive function building the scaffolding pillar

setblock ~ ~ ~ red_stained_glass destroy
#setblock ~ ~ ~ scaffolding destroy

particle lava ~ ~ ~ 0 0 0 1 1
say ok

summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648,CustomName:'{"text":"P","color":"red"}',CustomNameVisible: 1}

scoreboard players remove @s global 1

execute unless score @s global matches ..0 positioned ~ ~1 ~ run function loumardes:scaffolding_rush/pillar

