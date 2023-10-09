
scoreboard players operation tickAnim data = tick200 data
scoreboard players operation tickAnim data %= 10 const

execute if score tickAnim data matches 1 if score Preset options matches 2 run particle minecraft:crit -2 26 6 0.3 0.5 0.3 0.5 1 normal
execute if score tickAnim data matches 1 if score Preset options matches 7 run particle minecraft:enchant -2 26 6 0.3 0.5 0.3 0.5 1 normal
execute if score tickAnim data matches 1 if score Preset options matches 5 run particle minecraft:glow -2 26 6 0.3 0.5 0.3 0.5 1 normal
execute if score tickAnim data matches 1 if score Preset options matches 4 run particle minecraft:lava -2 26.7 6 0 0 0 0.5 1 normal
execute if score tickAnim data matches 1 if score Preset options matches 6 run particle minecraft:happy_villager -2 26 6 1 1 1 0.5 1 normal
execute if score tickAnim data matches 1 if score Preset options matches 3 run particle minecraft:flame -2 26 6 0.1 0.2 0.1 0.2 1 normal
