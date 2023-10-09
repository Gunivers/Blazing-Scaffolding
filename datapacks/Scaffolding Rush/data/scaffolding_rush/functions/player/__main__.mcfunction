# Executed globally
# Called by scaffolding_rush:__tick__

function scaffolding_rush:player/items
execute as @a unless score @s uuid matches -2147483648..2147483647 run function scaffolding_rush:player/join/__main__