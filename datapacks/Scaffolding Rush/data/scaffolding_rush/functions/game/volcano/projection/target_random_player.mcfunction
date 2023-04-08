# This function select a random nearby player and return a vector that will reach him via a ballistic trajectory

# It follow the formula : v = (r_f - r_i) / T - g * T / 2
# Discussion and demo here: https://github.com/Gunivers/Blazing-Scaffolding/issues/90

# Select the random player
tag @r[distance=..30] add VolcanoTarget

# Final position rf in miliblock
execute as @p[tag=VolcanoTarget] at @s run function glib.location:get
scoreboard players operation #rf_x global = @p[tag=VolcanoTarget] glib.locX
scoreboard players operation #rf_y global = @p[tag=VolcanoTarget] glib.locY
scoreboard players operation #rf_z global = @p[tag=VolcanoTarget] glib.locZ
scoreboard players operation #rf_x global *= 1000 glib.const
scoreboard players operation #rf_y global *= 1000 glib.const
scoreboard players operation #rf_z global *= 1000 glib.const

# Initial position ri in miliblock
function glib.location:get
scoreboard players operation #ri_x global = @s glib.locX
scoreboard players operation #ri_y global = @s glib.locY
scoreboard players operation #ri_z global = @s glib.locZ
scoreboard players operation #ri_x global *= 1000 glib.const
scoreboard players operation #ri_y global *= 1000 glib.const
scoreboard players operation #ri_z global *= 1000 glib.const

# Time to reach the player in ticks (default: 3-5s -> 60-100 ticks)
function glib.math:special/random
scoreboard players operation @s glib.res0 %= 40 glib.const
scoreboard players set #T global 60
scoreboard players operation #T global += @s glib.res0

# Gravity in miliblock/tick² (default: 0.98m/s² -> 24 miliblock/tick²)
scoreboard players set #g global -24

# Apply formula
scoreboard players operation @s glib.vectorX = #rf_x global
scoreboard players operation @s glib.vectorX -= #ri_x global
scoreboard players operation @s glib.vectorX /= #T global

scoreboard players operation @s glib.vectorY = #rf_y global
scoreboard players operation @s glib.vectorY -= #ri_y global
scoreboard players operation @s glib.vectorY /= #T global

scoreboard players operation @s glib.vectorZ = #rf_z global
scoreboard players operation @s glib.vectorZ -= #ri_z global
scoreboard players operation @s glib.vectorZ /= #T global

scoreboard players operation #scnd_term global = #g global
scoreboard players operation #scnd_term global *= #T global
scoreboard players operation #scnd_term global /= 2 glib.const

scoreboard players operation @s glib.vectorY -= #scnd_term global

