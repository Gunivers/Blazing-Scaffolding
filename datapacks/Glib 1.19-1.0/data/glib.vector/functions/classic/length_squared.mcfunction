scoreboard players operation #vector.x2 glib.data = @s glib.vectorX
scoreboard players operation #vector.x2 glib.data *= @s glib.vectorX

scoreboard players operation #vector.y2 glib.data = @s glib.vectorY
scoreboard players operation #vector.y2 glib.data *= @s glib.vectorY

scoreboard players operation #vector.z2 glib.data = @s glib.vectorZ
scoreboard players operation #vector.z2 glib.data *= @s glib.vectorZ

scoreboard players operation @s glib.res0 = #vector.x2 glib.data
scoreboard players operation @s glib.res0 += #vector.y2 glib.data
scoreboard players operation @s glib.res0 += #vector.z2 glib.data

scoreboard players operation @s glib.res0 /= 1000 glib.const
