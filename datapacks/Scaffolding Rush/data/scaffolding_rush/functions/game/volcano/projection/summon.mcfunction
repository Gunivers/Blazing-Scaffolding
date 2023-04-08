summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:["Volcano","VolcanoPop","VolcanoPopNew"],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}

execute as @e[tag=VolcanoPopNew] run function glib.math:special/random

scoreboard players operation @e[tag=VolcanoPopNew] glib.res0 %= 25 glib.const
execute as @e[tag=VolcanoPopNew] unless score @s glib.res0 matches 0 run function scaffolding_rush:game/volcano/projection/random_initial_velocity
execute as @e[tag=VolcanoPopNew] if score @s glib.res0 matches 0 run function scaffolding_rush:game/volcano/projection/target_random_player


tag @e remove VolcanoPopNew