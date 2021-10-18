execute if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=!minecraft:player,team=blue] if entity @a[advancements={scaffolding_rush:grab_villager/blue=true}] run function scaffolding_rush:clean_kill
execute if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=!minecraft:player,team=green] if entity @a[advancements={scaffolding_rush:grab_villager/green=true}] run function scaffolding_rush:clean_kill
execute if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=!minecraft:player,team=red] if entity @a[advancements={scaffolding_rush:grab_villager/red=true}] run function scaffolding_rush:clean_kill
execute if entity @s[tag=!VillagerRecup,tag=!Respawning] as @e[type=!minecraft:player,team=yellow] if entity @a[advancements={scaffolding_rush:grab_villager/yellow=true}] run function scaffolding_rush:clean_kill

execute if entity @s[tag=!VillagerRecup,tag=!Respawning] if score GameRunning global matches 1 as @s run function scaffolding_rush:villager/give/any

execute if score GameLobby global matches 1 if score TeamEgg options matches 1 as @a run function scaffolding_rush:lobby/base_egg/give
