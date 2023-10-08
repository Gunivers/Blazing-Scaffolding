#  __  __       _                           _                     
# |  \/  | __ _(_)_ __        ___ _   _ ___| |_ ___ _ __ ___  ___ 
# | |\/| |/ _` | | '_ \      / __| | | / __| __/ _ \ '_ ` _ \/ __|
# | |  | | (_| | | | | |     \__ \ |_| \__ \ ||  __/ | | | | \__ \
# |_|  |_|\__,_|_|_| |_|     |___/\__, |___/\__\___|_| |_| |_|___/
#                                 |___/                                 

# Give an ID to each player


# Lobby management
execute if score #lobby.active data matches 1 run function scaffolding_rush:lobby/__main__

# Tutorial management
function scaffolding_rush:tutorial/main

# When a player join the game
execute as @a[scores={trigger.leave=1..}] run function scaffolding_rush:join/__main__
execute as @a unless score @s game.id = #game.id data as @s run function scaffolding_rush:join/__main__

# Flip the options value
function scaffolding_rush:options/__main__

# Game management (when a game is started)
execute if score #game.running data matches 1 run function scaffolding_rush:game/__main__
execute if score #admin.exist options matches 1 as @a[tag=admin,scores={StartGame=1..}] run function scaffolding_rush:game/launch
execute unless score #admin.exist options matches 1 as @a[scores={StartGame=1..}] run function scaffolding_rush:game/launch
execute if entity @a[scores={Reset=1..}] run function scaffolding_rush:reset

# Ghostblocks
#execute as @a at @s run function scaffolding_rush:game/ghostblock_detection

# timer for animation
scoreboard players add tick200 data 1
execute if score tick200 data matches 200.. run scoreboard players set tick200 data 1

# Mechanics
function scaffolding_rush:mechanics/__main__

# Item
function scaffolding_rush:item/__main__

# Admin mode
execute unless entity @a[tag=admin] if score #admin.exist options matches 1 run function scaffolding_rush:options/admin
