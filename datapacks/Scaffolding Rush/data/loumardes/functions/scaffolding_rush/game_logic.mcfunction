


#Rise Lava
execute unless score Lavaspeed constant matches 0 run scoreboard players add LavaCountdown constant 1
execute if score LavaCountdown constant >= Lavaspeed constant run scoreboard players add LavaLevel constant 1
execute if score PerformanceMode constant matches 0 if score LavaCountdown constant >= Lavaspeed constant as @e[type=area_effect_cloud,tag=ScR_LavaLevel] at @s run function loumardes:scaffolding_rush/rise_lava_globally
execute if score LavaCountdown constant >= Lavaspeed constant run scoreboard players set LavaCountdown constant 0
execute as @a at @s run function loumardes:scaffolding_rush/simulate_lava
execute as @e[type=villager] at @s run function loumardes:scaffolding_rush/simulate_lava


#villager egg respawn
execute if score VillagerForgiveness constant matches 1 run function loumardes:scaffolding_rush/villager_loss_detection

