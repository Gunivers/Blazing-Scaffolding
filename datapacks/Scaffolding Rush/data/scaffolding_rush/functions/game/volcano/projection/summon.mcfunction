summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:["Volcano","VolcanoPop","VolcanoPopNew"],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}

execute as @e[tag=VolcanoPopNew] run function glib.math:special/random


execute as @e[tag=VolcanoPopNew] run function scaffolding_rush:game/volcano/projection/random_initial_velocity

scoreboard players operation @e[tag=VolcanoPopNew] glib.res0 %= VolcanoTargetRate options
# execute as @e[tag=VolcanoPopNew] if score @s glib.res0 matches 0 if entity @a[distance=..50,tag=InGame,gamemode=adventure] run effect give @s glowing 999 1 true
execute as @e[tag=VolcanoPopNew] if score @s glib.res0 matches 0 if entity @a[distance=..50,tag=InGame,gamemode=adventure] run function scaffolding_rush:game/volcano/projection/target_random_player

scoreboard players set @e[tag=VolcanoPopNew] glib.collision 3

tag @e remove VolcanoPopNew

# ,tag=!TeamEliminated