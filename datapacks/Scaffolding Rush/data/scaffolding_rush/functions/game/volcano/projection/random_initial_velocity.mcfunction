# This function gives to the source entity a random random initial motion vector

# Generating random angle
function glib.math:special/random
scoreboard players operation @s glib.res0 %= 360 glib.const
scoreboard players operation @s glib.var0 = @s glib.res0

# Getting max speed over X and Z
function glib.math:trig/cos
scoreboard players operation #VolcanoXmax glib = @s glib.res0
function glib.math:trig/sin
scoreboard players operation #VolcanoZmax glib = @s glib.res0

# Generating random speed over X and Z
function glib.math:special/random
execute if score @s glib.res0 matches ..-1 run tag @s add reverse_motion
scoreboard players operation @s glib.res0 %= #VolcanoXmax glib
scoreboard players operation @s[tag=reverse_motion] glib.res0 *= -1 const
scoreboard players operation @s glib.vectorX = @s glib.res0
tag @s remove reverse_motion

function glib.math:special/random
execute if score @s glib.res0 matches ..-1 run tag @s add reverse_motion
scoreboard players operation @s glib.res0 %= #VolcanoZmax glib
scoreboard players operation @s[tag=reverse_motion] glib.res0 *= -1 const
scoreboard players operation @s glib.vectorZ = @s glib.res0
tag @s remove reverse_motion

# Y motion
function scaffolding_rush:lib/random
scoreboard players operation @s glib.res0 %= 500 glib.const
scoreboard players add @s glib.res0 500
scoreboard players operation @s glib.vectorY = @s glib.res0