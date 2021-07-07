


#Rise Lava
execute unless score Lavaspeed constant matches 0 run scoreboard players add LavaCountdown constant 1
execute if score LavaCountdown constant >= Lavaspeed constant run scoreboard players add LavaLevel constant 1
execute if score LavaCountdown constant >= Lavaspeed constant run scoreboard players set LavaCountdown constant 0
execute as @a[gamemode=survival] at @s run function loumardes:scaffolding_rush/simulate_lava
execute as @e[type=villager] at @s run function loumardes:scaffolding_rush/simulate_lava


#villager egg respawn
execute if score VillagerForgiveness constant matches 1 run function loumardes:scaffolding_rush/villager_loss_detection

#detect end of game
scoreboard players set RemainingTeam constant 0

execute if entity @a[team=blue,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam constant 1
execute if entity @a[team=green,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam constant 1
execute if entity @a[team=red,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam constant 1
execute if entity @a[team=yellow,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam constant 1

execute if score RemainingTeam constant matches ..1 run function loumardes:scaffolding_rush/finish