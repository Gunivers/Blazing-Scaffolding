# Execute on threating arrows at villager position

execute if entity @e[type=villager,tag=game_villager,limit=1,sort=nearest,tag=red_villager] run summon marker ~ ~ ~ {Tags:["VillagerArrowShield","Red"]}
execute if entity @e[type=villager,tag=game_villager,limit=1,sort=nearest,tag=blue_villager] run summon marker ~ ~ ~ {Tags:["VillagerArrowShield","Blue"]}
execute if entity @e[type=villager,tag=game_villager,limit=1,sort=nearest,tag=green_villager] run summon marker ~ ~ ~ {Tags:["VillagerArrowShield","Green"]}
execute if entity @e[type=villager,tag=game_villager,limit=1,sort=nearest,tag=yellow_villager] run summon marker ~ ~ ~ {Tags:["VillagerArrowShield","Yellow"]}

execute at @e[type=villager,limit=1,sort=nearest] positioned ~ ~1 ~ facing entity @s feet run tp @e[type=marker,tag=VillagerArrowShield] ~ ~ ~ ~ ~

# execute at @s as @e[tag=VillagerArrowShield] run function glib.vector:classic/get_ata
# scoreboard players operation @e[tag=VillagerArrowShield] glib.vectorX /= 10 glib.const
# scoreboard players operation @e[tag=VillagerArrowShield] glib.vectorY /= 10 glib.const
# scoreboard players operation @e[tag=VillagerArrowShield] glib.vectorZ /= 10 glib.const

scoreboard players set @e[tag=VillagerArrowShield] glib.var0 50
execute as @e[tag=VillagerArrowShield] run function scaffolding_rush:villager/arrow_shield_laser_loop

kill @e[tag=VillagerArrowShield]
