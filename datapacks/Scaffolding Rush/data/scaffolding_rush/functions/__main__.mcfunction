#  __  __       _                           _                     
# |  \/  | __ _(_)_ __        ___ _   _ ___| |_ ___ _ __ ___  ___ 
# | |\/| |/ _` | | '_ \      / __| | | / __| __/ _ \ '_ ` _ \/ __|
# | |  | | (_| | | | | |     \__ \ |_| \__ \ ||  __/ | | | | \__ \
# |_|  |_|\__,_|_|_| |_|     |___/\__, |___/\__\___|_| |_| |_|___/
#                                 |___/                                                    

# Lobby management
execute if score GameLobby global matches 1 run function scaffolding_rush:lobby/__main__

# When a player join the game
execute as @a[scores={leave=1..}] run function scaffolding_rush:join/__main__
execute as @a unless score @s gameId = GameId global as @s run function scaffolding_rush:join/__main__

# Flip the options value
function scaffolding_rush:options/__main__

# Game management (when a game is started)
execute if score GameRunning global matches 1 run function scaffolding_rush:game/__main__
execute if entity @a[scores={StartGame=1..}] run function scaffolding_rush:game/launch
execute if entity @a[scores={Reset=1..}] run function scaffolding_rush:reset

#  ____  _           _     _ _                               _   _                                     _                 _          
# |  _ \(_)___  __ _| |__ | (_)_ __   __ _       _ __   __ _| |_(_)_   _____       _ __ ___   ___  ___| |__   __ _ _ __ (_) ___ ___ 
# | | | | / __|/ _` | '_ \| | | '_ \ / _` |     | '_ \ / _` | __| \ \ / / _ \     | '_ ` _ \ / _ \/ __| '_ \ / _` | '_ \| |/ __/ __|
# | |_| | \__ \ (_| | |_) | | | | | | (_| |     | | | | (_| | |_| |\ V /  __/     | | | | | |  __/ (__| | | | (_| | | | | | (__\__ \
# |____/|_|___/\__,_|_.__/|_|_|_| |_|\__, |     |_| |_|\__,_|\__|_| \_/ \___|     |_| |_| |_|\___|\___|_| |_|\__,_|_| |_|_|\___|___/
#                                    |___/                                                                                                                                                                                                                                      

# Avoid hunger
effect give @a minecraft:saturation 999999 1 true

# Disable offhand
execute as @a[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @a weapon.offhand with air

# Disable drop
execute as @e[type=item,tag=!processed] run function scaffolding_rush:item/catch_drop

# Disable advancements
advancement revoke @a everything

#  _   _                                                    _          
# | \ | | _____      __      _ __ ___   ___  ___ __ _ _ __ (_) ___ ___ 
# |  \| |/ _ \ \ /\ / /     | '_ ` _ \ / _ \/ __/ _` | '_ \| |/ __/ __|
# | |\  |  __/\ V  V /      | | | | | |  __/ (_| (_| | | | | | (__\__ \
# |_| \_|\___| \_/\_/       |_| |_| |_|\___|\___\__,_|_| |_|_|\___|___/
#                                                 

# Avoid gravel to physically stack (and then forbide creating gravel towers)
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:gravel"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:blue_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:lime_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:red_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:yellow_concrete_powder"}}] at @s if block ~ ~-0.75 ~ #scaffolding_rush:tower run kill @s

execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:gravel"}}] at @s if block ~ ~-1.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:blue_concrete_powder"}}] at @s if block ~ ~-1.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:lime_concrete_powder"}}] at @s if block ~ ~-1.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:red_concrete_powder"}}] at @s if block ~ ~-1.75 ~ #scaffolding_rush:tower run kill @s
execute as @e[type=minecraft:falling_block,nbt={BlockState:{Name:"minecraft:yellow_concrete_powder"}}] at @s if block ~ ~-1.75 ~ #scaffolding_rush:tower run kill @s

# Make scaffolding pillars creating instantly (instead of having to place each block of the pillar and wait them to fall)
execute if score InstantPillar options matches 1 at @e[type=falling_block,nbt={BlockState:{Name:"minecraft:scaffolding"}}] run summon minecraft:marker ~ ~ ~ {CustomName:'{"text":"ScR_Pillar"}'}
execute if score InstantPillar options matches 1 as @e[type=marker,name="ScR_Pillar"] at @s run function scaffolding_rush:options/pillar/start

# Snowball behavior
execute as @e[type=snowball,tag=!t] at @s run function scaffolding_rush:item/snowball
kill @e[type=arrow,nbt={inGround: 1b}]

# Count active teams
execute if score GameEnd global matches 0 run scoreboard players set RemainingTeam global 0
execute if score GameEnd global matches 0 if entity @a[team=blue,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 if entity @a[team=green,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 if entity @a[team=red,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 if entity @a[team=yellow,gamemode=!spectator,limit=1] run scoreboard players add RemainingTeam global 1
execute if score GameEnd global matches 0 as @a[team=random] run scoreboard players add RemainingTeam global 1

# Clear unconsistent villagers
execute as @e[type=villager,nbt=!{Age:0}] run function scaffolding_rush:clean_kill

# Admin mode
execute unless entity @a[tag=admin] if score Admin options matches 1 run function scaffolding_rush:options/admin

