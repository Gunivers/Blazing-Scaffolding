#  __  __       _                           _                     
# |  \/  | __ _(_)_ __        ___ _   _ ___| |_ ___ _ __ ___  ___ 
# | |\/| |/ _` | | '_ \      / __| | | / __| __/ _ \ '_ ` _ \/ __|
# | |  | | (_| | | | | |     \__ \ |_| \__ \ ||  __/ | | | | \__ \
# |_|  |_|\__,_|_|_| |_|     |___/\__, |___/\__\___|_| |_| |_|___/
#                                 |___/                                 

# Give an ID to each player
execute as @a unless score @s glib.id matches 1.. run function glib.id:get_suid

# Lobby management
execute if score GameLobby global matches 1 run function scaffolding_rush:lobby/__main__

# When a player join the game
execute as @a[scores={leave=1..}] run function scaffolding_rush:join/__main__
execute as @a unless score @s gameId = GameId global as @s run function scaffolding_rush:join/__main__

# Flip the options value
function scaffolding_rush:options/__main__

# Game management (when a game is started)
execute if score GameRunning global matches 1 run function scaffolding_rush:game/__main__
execute if score Admin options matches 1 if entity @a[tag=admin,scores={StartGame=1..}] run function scaffolding_rush:game/launch
execute unless score Admin options matches 1 if entity @a[scores={StartGame=1..}] run function scaffolding_rush:game/launch
execute if entity @a[scores={Reset=1..}] run function scaffolding_rush:reset

# Ghostblocks
#execute as @a at @s run function scaffolding_rush:game/ghostblock_detection

# Flag animation system
function scaffolding_rush:flag/__main__

# timer for animation
scoreboard players add tick200 global 1
execute if score tick200 global matches 200.. run scoreboard players set tick200 global 1

# Mechanics
function scaffolding_rush:mechanics/__main__

# Clear unconsistent villagers
execute as @e[type=villager,nbt=!{Age:0}] run function scaffolding_rush:clean_kill

# Admin mode
execute unless entity @a[tag=admin] if score Admin options matches 1 run function scaffolding_rush:options/admin

execute if score Regen options matches 1.. as @a unless entity @s[nbt={ActiveEffects:[{Id:10}]}] run effect give @s regeneration 10 0 true

function scaffolding_rush:villager/health_bar
