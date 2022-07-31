summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:["Volcano","Volcano_New"],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}

# execute as @e[tag=Volcano_New] run tellraw @a [{"text":"---"}]

# Generating random angle
execute as @e[tag=Volcano_New] run function glib.math:special/random
execute as @e[tag=Volcano_New] run scoreboard players operation @s glib.res0 %= 360 glib.const
execute as @e[tag=Volcano_New] run scoreboard players operation @s glib.var0 = @s glib.res0

# Getting max speed over X and Z
execute as @e[tag=Volcano_New] run function glib.math:trig/cos
execute as @e[tag=Volcano_New] run scoreboard players operation #VolcanoXmax glib = @s glib.res0
# execute as @e[tag=Volcano_New] run scoreboard players operation #VolcanoXmax glib *= 3 glib.const
execute as @e[tag=Volcano_New] run function glib.math:trig/sin
execute as @e[tag=Volcano_New] run scoreboard players operation #VolcanoZmax glib = @s glib.res0
# execute as @e[tag=Volcano_New] run scoreboard players operation #VolcanoZmax glib *= 3 glib.const

# Generating random speed over X and Z
execute as @e[tag=Volcano_New] run function glib.math:special/random
execute as @e[tag=Volcano_New] if score @s glib.res0 matches ..-1 run tag @s add reverse_motion
execute as @e[tag=Volcano_New] run scoreboard players operation @s glib.res0 %= #VolcanoXmax glib
scoreboard players operation @e[tag=Volcano_New,tag=reverse_motion] glib.res0 *= -1 const
execute as @e[tag=Volcano_New] run scoreboard players operation @s glib.vectorX = @s glib.res0
# execute as @e[tag=Volcano_New] store result entity @s Motion[0] double 0.001 run scoreboard players get @s glib.res0
tag @e[tag=Volcano_New] remove reverse_motion
# execute as @e[tag=Volcano_New] run tellraw @a ["",{"text":"Vector X: "},{"score":{"name":"@s","objective":"glib.res0"}}]

execute as @e[tag=Volcano_New] run function glib.math:special/random
execute as @e[tag=Volcano_New] if score @s glib.res0 matches ..-1 run tag @s add reverse_motion
execute as @e[tag=Volcano_New] run scoreboard players operation @s glib.res0 %= #VolcanoZmax glib
scoreboard players operation @e[tag=Volcano_New,tag=reverse_motion] glib.res0 *= -1 const
execute as @e[tag=Volcano_New] run scoreboard players operation @s glib.vectorZ = @s glib.res0
# execute as @e[tag=Volcano_New] store result entity @s Motion[2] double 0.001 run scoreboard players get @s glib.res0
tag @e[tag=Volcano_New] remove reverse_motion
# execute as @e[tag=Volcano_New] run tellraw @a ["",{"text":"Vector Z: "},{"score":{"name":"@s","objective":"glib.res0"}}]

# Y motion
execute as @e[tag=Volcano_New] run function scaffolding_rush:lib/random
scoreboard players operation @e[tag=Volcano_New] glib.res0 %= 500 glib.const
scoreboard players add @e[tag=Volcano_New] glib.res0 500
execute as @e[tag=Volcano_New] run scoreboard players operation @s glib.vectorY = @s glib.res0
# execute as @e[tag=Volcano_New] store result entity @s Motion[1] double 0.001 run scoreboard players get @s glib.res0
# execute as @e[tag=Volcano_New] run tellraw @a ["",{"text":"Vector Y: "},{"score":{"name":"@s","objective":"glib.res0"}}]

# execute as @e[tag=Volcano_New] run tellraw @a ["",{"text":"Summon > X: ","color":"gray"},{"score":{"name":"@s","objective":"glib.vectorX"},"color":"gold"},{"text":" Y: ","color":"gray"},{"score":{"name":"@s","objective":"glib.vectorY"},"color":"gold"},{"text":" Z: ","color":"gray"},{"score":{"name":"@s","objective":"glib.vectorZ"},"color":"gold"}]


tag @e remove Volcano_New