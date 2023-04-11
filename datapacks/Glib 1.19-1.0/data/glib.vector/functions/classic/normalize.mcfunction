function glib.vector:classic/length

scoreboard players operation @s glib.vectorX *= 1000 glib.const
scoreboard players operation @s glib.vectorY *= 1000 glib.const
scoreboard players operation @s glib.vectorZ *= 1000 glib.const

scoreboard players operation @s glib.vectorX /= @s glib.res0
scoreboard players operation @s glib.vectorY /= @s glib.res0
scoreboard players operation @s glib.vectorZ /= @s glib.res0