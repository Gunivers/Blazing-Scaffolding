scoreboard players set #VolcanoPopNumber global 0
execute as @e[type=armor_stand,tag=VolcanoPop] run scoreboard players add #VolcanoPopNumber global 1

execute if score #VolcanoPopNumber global matches 0..100 run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Tags:["Volcano","VolcanoPop","VolcanoPopNew"],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
# summon block_display ~ ~ ~ {block_state:{Name:"minecraft:magma_block"},Tags:["Volcano","VolcanoPop","VolcanoPopNew"]}

scoreboard players set @e[type=armor_stand,tag=VolcanoPopNew] glib.lifetime -200

execute as @e[type=armor_stand,tag=VolcanoPopNew] run function glib.math:special/random


execute as @e[type=armor_stand,tag=VolcanoPopNew] run function scaffolding_rush:game/volcano/projection/random_initial_velocity

scoreboard players operation @e[type=armor_stand,tag=VolcanoPopNew] glib.res0 %= VolcanoTargetRate options
# execute as @e[tag=VolcanoPopNew] if score @s glib.res0 matches 0 if entity @a[distance=..50,tag=InGame,gamemode=adventure] run effect give @s glowing 999 1 true
execute as @e[type=armor_stand,tag=VolcanoPopNew] if score @s glib.res0 matches 0 if entity @a[distance=..50,tag=InGame,gamemode=adventure] run function scaffolding_rush:game/volcano/projection/target_random_player

scoreboard players set @e[type=armor_stand,tag=VolcanoPopNew] glib.collision 0
scoreboard players set @e[type=armor_stand,tag=VolcanoPopNew] glib.precision 1000

tag @e remove VolcanoPopNew

# ,tag=!TeamEliminated