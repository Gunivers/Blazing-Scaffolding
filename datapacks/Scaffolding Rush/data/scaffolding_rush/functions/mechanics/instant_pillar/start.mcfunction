#starts a recursive function to build a scaffolding pillar

kill @e[type=falling_block,distance=..0.1,nbt={BlockState:{Name:"minecraft:scaffolding"}}]

function scaffolding_rush:mechanics/instant_pillar/loop

#if a solid block is found, place the scaffoldings, otherwise cancel the pillar
execute unless entity @s[tag=NoSupport] run fill ~ 0 ~ ~ 255 ~ minecraft:scaffolding replace minecraft:green_stained_glass
execute if entity @s[tag=NoSupport] run fill ~ 0 ~ ~ 255 ~ minecraft:air replace minecraft:green_stained_glass

particle crit ~ ~1.5 ~ 0.2 0.2 0 0.2 5

execute unless entity @s[tag=NoSupport] run playsound minecraft:block.scaffolding.fall master @a ~ ~ ~ 

kill @s
