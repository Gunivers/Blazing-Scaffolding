
#Rise Lava
execute unless score LavaSpeedTics options matches 0 run scoreboard players add LavaCountdown global 1
execute if score LavaCountdown global >= LavaSpeedTics options run scoreboard players add LavaLevel global 1
execute if score PerformanceMode options matches 0 if score LavaCountdown global >= LavaSpeedTics options as @e[type=area_effect_cloud,name="ScR_LavaLevel"] at @s run function loumardes:scaffolding_rush/lava/rise_globally
execute if score LavaCountdown global >= LavaSpeedTics options run scoreboard players set LavaCountdown global 0

execute as @a[gamemode=!spectator] at @s run function loumardes:scaffolding_rush/lava/simulate
execute as @e[type=villager] at @s run function loumardes:scaffolding_rush/lava/simulate

#villager egg respawn
execute if score VillagerForgiveness options matches 1 run function loumardes:scaffolding_rush/villager/respawn/villager_loss_detection

#respawn dead players
execute as @e[scores={killed=1..},tag=!Respawning] run function loumardes:scaffolding_rush/died/detect

#move villagers
execute as @a[scores={villagerClick=1..}] at @s run function loumardes:scaffolding_rush/villager/give/any

#warn villagers height
function loumardes:scaffolding_rush/villager/warn

#inform the player that he has the egg
title @a[tag=has_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" You have the egg !! Place it to respawn ! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]

execute if score GameLobby global matches 0 as @e[type=minecraft:villager] at @s if entity @a[distance=..0.5] run effect give @s minecraft:invisibility 1 1 true
execute if score GameLobby global matches 0 as @e[type=minecraft:villager] at @s unless block ~ ~ ~ #loumardes:air unless block ~ ~ ~ minecraft:scaffolding run tp @s ~ ~0.1 ~

execute if score GameEnd global matches 0 if score RemainingTeam global matches ..1 run function loumardes:scaffolding_rush/game/finish

#Ennemi villager interraction
execute at @e[type=minecraft:villager,team=blue] run tag @a[team=!blue,distance=..3] add VillagerRecup
execute at @e[type=minecraft:villager,team=blue] run tag @a[team=!blue,distance=3..] remove VillagerRecup
execute at @e[type=minecraft:villager,team=green] run tag @a[team=!green,distance=..3] add VillagerRecup
execute at @e[type=minecraft:villager,team=green] run tag @a[team=!green,distance=3..] remove VillagerRecup
execute at @e[type=minecraft:villager,team=red] run tag @a[team=!red,distance=..3] add VillagerRecup
execute at @e[type=minecraft:villager,team=red] run tag @a[team=!red,distance=3..] remove VillagerRecup
execute at @e[type=minecraft:villager,team=yellow] run tag @a[team=!yellow,distance=..3] add VillagerRecup
execute at @e[type=minecraft:villager,team=yellow] run tag @a[team=!yellow,distance=3..] remove VillagerRecup
