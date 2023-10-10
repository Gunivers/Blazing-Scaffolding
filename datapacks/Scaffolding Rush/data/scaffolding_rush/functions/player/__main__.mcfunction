# Executed globally
# Called by scaffolding_rush:__tick__

# Join Management -------------------------------------------------------------

# Players just joined if he doesn't have uuid (first join)
execute as @a unless score @s uuid matches -2147483648..2147483647 run function scaffolding_rush:player/join/__main__
# Or if he have a leav score
execute as @a[scores={listener.leave=1..}] run function scaffolding_rush:player/join/__main__

# Item Management -------------------------------------------------------------

function scaffolding_rush:player/items

# Death Management ------------------------------------------------------------

function scaffolding_rush:player/death/trigger