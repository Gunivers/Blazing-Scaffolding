#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib.move:by_vector
# Parallelizable: true
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.collision dummy [{"text":"GLib ","color":"gold"},{"text":"Collision Type","color":"dark_gray"}]
scoreboard objectives add glib.precision dummy [{"text":"GLib ","color":"gold"},{"text":"Precision Type","color":"dark_gray"}]

scoreboard objectives add glib.vectorX dummy [{"text":"GLib ","color":"gold"},{"text":"Vector X","color":"dark_gray"}]
scoreboard objectives add glib.vectorY dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Y","color":"dark_gray"}]
scoreboard objectives add glib.vectorZ dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

# Manage precision of collision detection (1000 = 1 block, 500 = 0.5 blocks). More the system is accurate and more it will be heavy to run.


#__________________________________________________
# CODE

# Backup

scoreboard players operation #backup.move.vectorX glib = @s glib.vectorX
scoreboard players operation #backup.move.vectorY glib = @s glib.vectorY
scoreboard players operation #backup.move.vectorZ glib = @s glib.vectorZ
scoreboard players operation #backup.move.res0 glib = @s glib.res0

# Decomposition in sum of vector with parameters <= glib.precision

tag @s add glib.config.override
scoreboard players operation vector.fastNormalization.lenght glib.config = @s glib.precision
function glib.vector:classic/fast_normalize

scoreboard players operation #move.normed_vectorX glib = @s glib.vectorX
scoreboard players operation #move.normed_vectorY glib = @s glib.vectorY
scoreboard players operation #move.normed_vectorZ glib = @s glib.vectorZ


# Apply movement

scoreboard players set move.decomposition.factor glib 1000
scoreboard players operation move.decomposition.factor glib /= @s glib.res0
scoreboard players operation move.decomposition.factor.save glib = move.decomposition.factor glib

execute at @s if score move.decomposition.factor glib matches 1.. run function glib.move:by_vector/child/loop

# Rest of decomposition

scoreboard players operation @s glib.vectorX = #backup.move.vectorX glib
scoreboard players operation @s glib.vectorY = #backup.move.vectorY glib
scoreboard players operation @s glib.vectorZ = #backup.move.vectorZ glib

scoreboard players operation @s glib.vectorX %= #move.normed_vectorX glib
scoreboard players operation @s glib.vectorY %= #move.normed_vectorY glib
scoreboard players operation @s glib.vectorZ %= #move.normed_vectorZ glib

# Apply movement for the rest

tag @s add glib.move.by_vector.rest
execute if entity @s[tag=!glib.collision] at @s run function glib.move:by_vector/child/loop
tag @s remove glib.move.by_vector.rest

# Restore

scoreboard players operation @s glib.vectorX = #backup.move.vectorX glib
scoreboard players operation @s glib.vectorY = #backup.move.vectorY glib
scoreboard players operation @s glib.vectorZ = #backup.move.vectorZ glib
scoreboard players operation @s glib.res0 = backup.move.res0 glib
