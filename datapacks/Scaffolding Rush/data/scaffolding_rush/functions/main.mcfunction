effect give @a minecraft:saturation 999999 1 true

#flip the options value
function scaffolding_rush:options/any

execute if entity @a[scores={StartGame=1..}] run function scaffolding_rush:game/countdown
execute if entity @a[scores={Reset=1..}] run function scaffolding_rush:reset


#Lobby main
execute if score GameLobby global matches 1 run function scaffolding_rush:lobby/main

execute as @a[scores={leave=1..}] run function scaffolding_rush:join/main
execute as @a unless score @s gameId = GameId global as @s run function scaffolding_rush:join/main

#villager placed
execute as @a[scores={bluePlaced=1..}] run function scaffolding_rush:villager/placed
execute as @a[scores={greenPlaced=1..}] run function scaffolding_rush:villager/placed
execute as @a[scores={redPlaced=1..}] run function scaffolding_rush:villager/placed
execute as @a[scores={yellowPlaced=1..}] run function scaffolding_rush:villager/placed

#==Gameplay==
#game logic
execute if score GameRunning global matches 1 run function scaffolding_rush:game/main

#gravel tower
execute as @a[gamemode=survival,nbt={Inventory:[{id:"minecraft:gravel",Slot:-106b}]},nbt=!{SelectedItem:{}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={Inventory:[{id:"minecraft:blue_concrete_powder",Slot:-106b}]},nbt=!{SelectedItem:{}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={Inventory:[{id:"minecraft:lime_concrete_powder",Slot:-106b}]},nbt=!{SelectedItem:{}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={Inventory:[{id:"minecraft:red_concrete_powder",Slot:-106b}]},nbt=!{SelectedItem:{}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={Inventory:[{id:"minecraft:yellow_concrete_powder",Slot:-106b}]},nbt=!{SelectedItem:{}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={Inventory:[{id:"minecraft:ghast_spawn_egg",Slot:-106b}]},nbt=!{SelectedItem:{}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:gravel"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:blue_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:lime_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:red_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:yellow_concrete_powder"}}] run gamemode adventure
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:ghast_spawn_egg"}}] run gamemode adventure
execute if score GameLoading global matches 0 as @a[gamemode=adventure,nbt=!{SelectedItem:{id:"minecraft:gravel"}},nbt=!{SelectedItem:{id:"minecraft:blue_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:lime_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:red_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:yellow_concrete_powder"}},nbt=!{SelectedItem:{id:"minecraft:ghast_spawn_egg"}},nbt=!{Inventory:[{id:"minecraft:gravel",Slot:-106b}]},nbt=!{Inventory:[{id:"minecraft:blue_concrete_powder",Slot:-106b}]},nbt=!{Inventory:[{id:"minecraft:lime_concrete_powder",Slot:-106b}]},nbt=!{Inventory:[{id:"minecraft:red_concrete_powder",Slot:-106b}]},nbt=!{Inventory:[{id:"minecraft:yellow_concrete_powder",Slot:-106b}]},nbt=!{Inventory:[{id:"minecraft:ghast_spawn_egg",Slot:-106b}]}] run gamemode survival
execute as @a[gamemode=adventure,nbt={SelectedItem:{id:"minecraft:scaffolding"}}] run gamemode survival
execute as @a[gamemode=adventure,nbt={SelectedItem:{id:"minecraft:squid_spawn_egg"}}] run gamemode survival
execute as @a[gamemode=adventure,nbt={SelectedItem:{id:"minecraft:slime_spawn_egg"}}] run gamemode survival
execute as @a[gamemode=adventure,nbt={SelectedItem:{id:"minecraft:mooshroom_spawn_egg"}}] run gamemode survival
execute as @a[gamemode=adventure,nbt={SelectedItem:{id:"minecraft:blaze_spawn_egg"}}] run gamemode survival
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:gravel"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:blue_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:lime_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:red_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:yellow_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:tower run kill @s

#instant pillar
execute if score InstantPillar options matches 1 at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:scaffolding"}}] run summon minecraft:marker ~ ~ ~ {CustomName:'{"text":"ScR_Pillar"}'}
execute if score InstantPillar options matches 1 as @e[type=marker,name="ScR_Pillar"] at @s run function scaffolding_rush:pillar/start

#items
execute as @e[type=item,tag=!processed] run function scaffolding_rush:item/catch_drop

#snowball
execute as @e[type=snowball,tag=!t] at @s run function scaffolding_rush:item/snowball
kill @e[type=arrow,nbt={inGround: 1b}]

#player in teams
execute if score GameEnd global matches 0 run scoreboard players set RemainingTeam global 0

execute if score GameEnd global matches 0 if entity @a[team=blue,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 if entity @a[team=green,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 if entity @a[team=red,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 if entity @a[team=yellow,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 as @a[team=random] run scoreboard players add RemainingTeam global 1

execute as @e[type=villager,nbt=!{Age:0}] run function scaffolding_rush:clean_kill

advancement revoke @a everything
