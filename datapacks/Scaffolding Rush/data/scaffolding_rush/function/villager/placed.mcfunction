execute if score DevelopementMode data matches 1 run say villager/placed

tag @s remove player.item.have_egg

execute if entity @s[team=red] run function scaffolding_rush:villager/placed_child {color:"red"}
execute if entity @s[team=blue] run function scaffolding_rush:villager/placed_child {color:"blue"}
execute if entity @s[team=green] run function scaffolding_rush:villager/placed_child {color:"green"}
execute if entity @s[team=yellow] run function scaffolding_rush:villager/placed_child {color:"yellow"}

scoreboard players set @e[type=minecraft:villager] listener.death 0

execute as @e[type=minecraft:villager] run data merge entity @s {CustomName:""}

#Recup delay
# tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.villager_placed","color":"gray"},{"text":"5","color":"gold"},{"translate":"blazing_scaffolding.villager_placed_seconds","color":"gray"}]
# execute at @s run playsound minecraft:entity.villager.celebrate master @a[distance=..30] ~ ~ ~ 1 1 0
scoreboard players set @s player.pick_villager_cooldown 0