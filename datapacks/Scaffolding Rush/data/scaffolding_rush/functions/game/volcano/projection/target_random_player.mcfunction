# This function select a random nearby player and return a vector that will reach him via a ballistic trajectory

# It follow the formula : v = (r_f - r_i) / T - g * T / 2
# Discussion and demo here: https://github.com/Gunivers/Blazing-Scaffolding/issues/90

# Select the random player
kill @e[type=marker,tag=VolcanoTarget]
execute at @a[limit=1,sort=random,distance=..50,tag=InGame,gamemode=adventure] run summon marker ~ ~ ~ {Tags:["VolcanoTarget"]}

execute as @e[type=marker,tag=VolcanoTarget] at @s unless block ~ ~ ~ scaffolding unless block ~ ~-1 ~ scaffolding run tag @s add VolcanoAbortTarget

execute as @e[type=marker,tag=VolcanoTarget,tag=VolcanoAbortTarget] at @s run tp @s ~ ~5 ~

scoreboard players set #RandoWalk global 25
execute as @e[type=marker,tag=VolcanoTarget] at @s run function scaffolding_rush:game/volcano/projection/random_walk

execute at @e[type=marker,tag=VolcanoTarget,tag=!VolcanoAbortTarget] run particle lava ~ ~0.55 ~ 0.5 0.5 0.5 0 50 force
execute at @e[type=marker,tag=VolcanoTarget,tag=!VolcanoAbortTarget] run playsound minecraft:item.bucket.fill_lava master @a[distance=..30] ~ ~ ~ 2 2 1
#  unless entity @a[tag=InGame,gamemode=adventure,distance=..2]

# Final position rf in miliblock
execute as @e[type=marker,tag=VolcanoTarget] at @s run function glib.location:get
scoreboard players operation #rf_x global = @e[type=marker,tag=VolcanoTarget] glib.locX
scoreboard players operation #rf_y global = @e[type=marker,tag=VolcanoTarget] glib.locY
scoreboard players operation #rf_z global = @e[type=marker,tag=VolcanoTarget] glib.locZ
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

# Time to reach the player in ticks (default: 2-3s -> 40-60 ticks)
function glib.math:special/random
scoreboard players operation @s glib.res0 %= 20 glib.const
scoreboard players set #T global 40
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

# Clear
kill @e[type=marker,tag=VolcanoTarget]