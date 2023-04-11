# Backup of glib.in.0
scoreboard players operation vector.length.var0 glib.data = @s glib.var0

# Get lenght^2
function glib.vector:classic/length_squared

# sqrt(legnth^2)
scoreboard players operation @s glib.var0 = @s glib.res0
scoreboard players operation @s glib.var0 *= 1000 glib.const
function glib.math:common/sqrt

# Restoring glib.in.0
scoreboard players operation @s glib.var0 = vector.length.var0 glib.data