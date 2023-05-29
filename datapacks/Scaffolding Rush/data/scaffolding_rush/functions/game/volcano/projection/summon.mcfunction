scoreboard players set #VolcanoPopNumber global 0
execute as @e[type=marker,tag=VolcanoPop] run scoreboard players add #VolcanoPopNumber global 1

execute if score #VolcanoPopNumber global matches 0..50 run summon marker ~ ~ ~ {Tags:["Volcano","VolcanoPop","VolcanoPopNew"]}
# 
# summon block_display ~ ~ ~ {block_state:{Name:"minecraft:magma_block"},Tags:["Volcano","VolcanoPop","VolcanoPopNew"]}

scoreboard players set @e[type=marker,tag=VolcanoPopNew] glib.lifetime -100

execute as @e[type=marker,tag=VolcanoPopNew] run function glib.math:special/random


execute as @e[type=marker,tag=VolcanoPopNew] run function scaffolding_rush:game/volcano/projection/random_initial_velocity

scoreboard players operation @e[type=marker,tag=VolcanoPopNew] glib.res0 %= VolcanoTargetRate options
# execute as @e[tag=VolcanoPopNew] if score @s glib.res0 matches 0 if entity @a[distance=..50,tag=InGame,gamemode=adventure] run effect give @s glowing 999 1 true
execute as @e[type=marker,tag=VolcanoPopNew] if score @s glib.res0 matches 0 if entity @a[distance=..50,tag=InGame,gamemode=adventure] run function scaffolding_rush:game/volcano/projection/target_random_player

scoreboard players set @e[type=marker,tag=VolcanoPopNew] glib.collision 0
scoreboard players set @e[type=marker,tag=VolcanoPopNew] glib.precision 1000

tag @e remove VolcanoPopNew

# ,tag=!TeamEliminated