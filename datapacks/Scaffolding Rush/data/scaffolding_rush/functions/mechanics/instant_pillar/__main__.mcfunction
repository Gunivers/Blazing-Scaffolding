# Make scaffolding pillars creating instantly (instead of having to place each block of the pillar and wait them to fall)

execute at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:scaffolding"}}] run summon minecraft:marker ~ ~ ~ {CustomName:'{"text":"ScR_Pillar"}'}
execute as @e[type=marker,name="ScR_Pillar"] at @s run function scaffolding_rush:mechanics/instant_pillar/start
