
function scaffolding_rush:lobby/animation/start_label
function scaffolding_rush:lobby/animation/start_game
function scaffolding_rush:lobby/animation/preset
function scaffolding_rush:lobby/animation/team
function scaffolding_rush:lobby/animation/magma

# Particles dripping_lava scaffolding
scoreboard players operation tickAnim data = tick200 data
scoreboard players operation tickAnim data %= 20 const
execute if score tickAnim data matches 1 run particle minecraft:dripping_lava 2.00 38.00 3.00 4 0 4 1 1
