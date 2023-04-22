
scoreboard players set @e[tag=arrow_threat] glib.var3 0
scoreboard players set @e[tag=arrow_threat] glib.var4 0
scoreboard players set @e[tag=arrow_threat] glib.var5 0

# Scalar product

execute as @e[tag=arrow_threat] run scoreboard players operation @s glib.var3 += @s glib.vectorX
execute as @e[tag=arrow_threat] run scoreboard players operation @s glib.var3 *= @s glib.var0

execute as @e[tag=arrow_threat] run scoreboard players operation @s glib.var4 += @s glib.vectorY
execute as @e[tag=arrow_threat] run scoreboard players operation @s glib.var4 *= @s glib.var1

execute as @e[tag=arrow_threat] run scoreboard players operation @s glib.var5 += @s glib.vectorZ
execute as @e[tag=arrow_threat] run scoreboard players operation @s glib.var5 *= @s glib.var2

scoreboard players set @e[tag=arrow_threat] glib.var0 0
execute as @e[tag=arrow_threat] run scoreboard players operation @s glib.var0 += @s glib.var3
execute as @e[tag=arrow_threat] run scoreboard players operation @s glib.var0 += @s glib.var4
execute as @e[tag=arrow_threat] run scoreboard players operation @s glib.var0 += @s glib.var5
execute as @e[tag=arrow_threat] run scoreboard players operation @s glib.var0 /= 1000 glib.const

