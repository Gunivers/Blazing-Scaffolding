# Execute on threating arrows at villager position

execute if entity @e[type=villager,limit=1,sort=nearest,team=red] run summon marker ~ ~ ~ {Tags:["VillagerArrowShield","Red"]}
execute if entity @e[type=villager,limit=1,sort=nearest,team=blue] run summon marker ~ ~ ~ {Tags:["VillagerArrowShield","Blue"]}
execute if entity @e[type=villager,limit=1,sort=nearest,team=green] run summon marker ~ ~ ~ {Tags:["VillagerArrowShield","Green"]}
execute if entity @e[type=villager,limit=1,sort=nearest,team=yellow] run summon marker ~ ~ ~ {Tags:["VillagerArrowShield","Yellow"]}

execute at @s as @e[tag=VillagerArrowShield] run function glib.vector:classic/get_ata
scoreboard players operation @e[tag=VillagerArrowShield] glib.vectorX /= 10 glib.const
scoreboard players operation @e[tag=VillagerArrowShield] glib.vectorY /= 10 glib.const
scoreboard players operation @e[tag=VillagerArrowShield] glib.vectorZ /= 10 glib.const

scoreboard players set @e[tag=VillagerArrowShield] glib.var0 10
execute as @e[tag=VillagerArrowShield] run function scaffolding_rush:villager/arrow_shield_laser_loop

kill @e[tag=VillagerArrowShield]
