# Execute on threating arrows at villager position

tag @e[type=villager,tag=respawn_villager,limit=1,sort=nearest] add villager.arrow_shield.target
execute if entity @e[tag=villager.arrow_shield.target,tag=red_villager] run summon marker ~ ~1 ~ {Tags:["VillagerArrowShield","Red"]}
execute if entity @e[tag=villager.arrow_shield.target,tag=blue_villager] run summon marker ~ ~1 ~ {Tags:["VillagerArrowShield","Blue"]}
execute if entity @e[tag=villager.arrow_shield.target,tag=green_villager] run summon marker ~ ~1 ~ {Tags:["VillagerArrowShield","Green"]}
execute if entity @e[tag=villager.arrow_shield.target,tag=yellow_villager] run summon marker ~ ~1 ~ {Tags:["VillagerArrowShield","Yellow"]}

execute at @e[type=villager,limit=1,sort=nearest] positioned ~ ~1.7 ~ facing entity @s feet run tp @e[type=marker,tag=VillagerArrowShield] ~ ~ ~ ~ ~

scoreboard players set @e[tag=VillagerArrowShield] timer 50
execute as @e[tag=VillagerArrowShield] run function scaffolding_rush:villager/arrow_shield/laser_loop

kill @e[tag=VillagerArrowShield]
tag @e remove villager.arrow_shield.target
