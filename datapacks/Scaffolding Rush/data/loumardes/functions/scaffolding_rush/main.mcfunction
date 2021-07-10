effect give @a minecraft:saturation 999999 1 true

#Lobby main
execute if score GameLobby global matches 1 run function loumardes:scaffolding_rush/lobby/main

execute as @a unless score @s gameId = GameId global as @s run function loumardes:scaffolding_rush/join/main

#gravel tower
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:gravel"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:blue_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:lime_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:red_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:yellow_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:ghast_spawn_egg"}}] run gamemode adventure
execute if score GameLoading global matches 1 as @a[gamemode=adventure,nbt=!{SelectedItem:{id:"minecraft:gravel"}},nbt=!{SelectedItem:{id:"minecraft:blue_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:lime_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:red_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:yellow_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:ghast_spawn_egg"}}] run gamemode survival
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:gravel"}}] at @s if block ~ ~-0.75 ~ #loumardes:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:blue_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #loumardes:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:lime_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #loumardes:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:red_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #loumardes:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:yellow_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #loumardes:tower run kill @s

#suffocation
execute as @a[gamemode=!spectator] at @s if score GameRunning global matches 0 if block ~ ~ ~ #loumardes:lobby run tp @s ~ ~0.5 ~

#flip the options value
function loumardes:scaffolding_rush/options/any

#instant pillar
execute if score InstantPillar options matches 1 at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:scaffolding"}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647, CustomName:'{"text":"ScR_Pillar"}'}
execute if score InstantPillar options matches 1 as @e[type=area_effect_cloud ,name="ScR_Pillar"] at @s run function loumardes:scaffolding_rush/pillar/start

#items
execute as @e[type=item,tag=!processed] run function loumardes:scaffolding_rush/item/catch_drop

#game logic
execute if score GameRunning global matches 1 run function loumardes:scaffolding_rush/game/main

#villager placed
execute as @a[scores={bluePlaced=1..}] run function loumardes:scaffolding_rush/villager/placed
execute as @a[scores={greenPlaced=1..}] run function loumardes:scaffolding_rush/villager/placed
execute as @a[scores={redPlaced=1..}] run function loumardes:scaffolding_rush/villager/placed
execute as @a[scores={yellowPlaced=1..}] run function loumardes:scaffolding_rush/villager/placed

#player in teams
execute if score GameEnd global matches 0 run scoreboard players set RemainingTeam global 0

execute if score GameEnd global matches 0 if entity @a[team=blue,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 if entity @a[team=green,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 if entity @a[team=red,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 if entity @a[team=yellow,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
