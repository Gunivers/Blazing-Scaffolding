# When player click on villager

# In game
execute if score GameRunning global matches 1 unless score MovableVillager options matches 0 if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=villager,tag=blue_villager] if entity @a[advancements={scaffolding_rush:grab_villager/blue=true}] run function scaffolding_rush:clean_kill
execute if score GameRunning global matches 1 unless score MovableVillager options matches 0 if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=villager,tag=green_villager] if entity @a[advancements={scaffolding_rush:grab_villager/green=true}] run function scaffolding_rush:clean_kill
execute if score GameRunning global matches 1 unless score MovableVillager options matches 0 if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=villager,tag=red_villager] if entity @a[advancements={scaffolding_rush:grab_villager/red=true}] run function scaffolding_rush:clean_kill
execute if score GameRunning global matches 1 unless score MovableVillager options matches 0 if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=villager,tag=yellow_villager] if entity @a[advancements={scaffolding_rush:grab_villager/yellow=true}] run function scaffolding_rush:clean_kill

execute if score GameRunning global matches 1 unless score MovableVillager options matches 0 if entity @s[tag=!VillagerRecup,tag=!Respawning] as @s run function scaffolding_rush:game/villager/egg/give/any

#inform the player if the option is disabled
execute if score GameRunning global matches 1 if score MovableVillager options matches 0 run tellraw @s ["",{"text":"/!\\ You can't move the villager\n/!\\ That option is ","color":"gold"},{"text":"disabled","color":"red"},{"text":" !","color":"gold"}]

# In lobby
execute if score GameLobby global matches 1 if score TeamEgg options matches 1 as @a run function scaffolding_rush:lobby/base_egg/give
