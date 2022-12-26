# When player click on villager

# In game
execute if score GameRunning global matches 1 if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=!minecraft:player,tag=blue_villager] if entity @a[advancements={scaffolding_rush:grab_villager/blue=true}] run function scaffolding_rush:clean_kill
execute if score GameRunning global matches 1 if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=!minecraft:player,tag=green_villager] if entity @a[advancements={scaffolding_rush:grab_villager/green=true}] run function scaffolding_rush:clean_kill
execute if score GameRunning global matches 1 if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=!minecraft:player,tag=red_villager] if entity @a[advancements={scaffolding_rush:grab_villager/red=true}] run function scaffolding_rush:clean_kill
execute if score GameRunning global matches 1 if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=!minecraft:player,tag=yellow_villager] if entity @a[advancements={scaffolding_rush:grab_villager/yellow=true}] run function scaffolding_rush:clean_kill

execute if score GameRunning global matches 1 if entity @s[tag=!VillagerRecup,tag=!Respawning] as @s run function scaffolding_rush:villager/egg/give/any


# In lobby
execute if score GameLobby global matches 1 if score TeamEgg options matches 1 as @a run function scaffolding_rush:lobby/base_egg/give
