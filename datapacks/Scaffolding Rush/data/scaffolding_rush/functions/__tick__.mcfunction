

execute as @a[scores={listener.leave=1..}] run function scaffolding_rush:player/join/__main__

execute if score #lobby.active data matches 1 run function scaffolding_rush:lobby/__main__
execute if score #game.running data matches 1 run function scaffolding_rush:game/__main__
function scaffolding_rush:tutorial/main

function scaffolding_rush:options/__main__

# Game management (when a game is started)
execute as @a[scores={trigger.start_game=1..}] run function scaffolding_rush:game/launch


execute if entity @a[scores={trigger.reset=1..}] run function scaffolding_rush:reset

# Ghostblocks
#execute as @a at @s run function scaffolding_rush:game/ghostblock_detection

# timer for animation
scoreboard players add tick200 data 1
execute if score tick200 data matches 200.. run scoreboard players set tick200 data 1

# Mechanics
function scaffolding_rush:mechanics/__main__

# Item
function scaffolding_rush:player/item/__main__

# Admin mode
execute unless entity @a[tag=admin] if score #admin.exist options matches 1 run function scaffolding_rush:options/admin
