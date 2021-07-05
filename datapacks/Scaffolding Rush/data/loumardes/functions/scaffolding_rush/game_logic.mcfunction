


#Rise Lava
execute unless score Lavaspeed constant matches 0 run scoreboard players add LavaCountdown constant 1
execute if score LavaCountdown constant >= Lavaspeed constant run scoreboard players add LavaLevel constant 1
execute if score LavaCountdown constant >= Lavaspeed constant run scoreboard players set LavaCountdown constant 0
execute as @a[gamemode=survival] at @s run function loumardes:scaffolding_rush/simulate_lava
execute as @e[type=villager] at @s run function loumardes:scaffolding_rush/simulate_lava


#villager egg respawn
execute if score VillagerForgiveness constant matches 1 run function loumardes:scaffolding_rush/villager_loss_detection

