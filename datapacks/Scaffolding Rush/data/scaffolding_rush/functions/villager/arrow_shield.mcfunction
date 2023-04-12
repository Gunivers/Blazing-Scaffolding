# Executed on all villagers at @s positioned ~ ~1 ~

# Get all arrows in a 5 block radius (threatening the villager)
tag @e[type=arrow,distance=..5] add arrow_threat

# First vector
execute as @e[tag=arrow_threat] run function glib.vector:classic/get_ata
execute as @e[tag=arrow_threat] run function glib.vector:classic/normalize
execute as @e[tag=arrow_threat] run function glib.vector:classic/swap_vector_and_var

# Second vector
execute as @e[tag=arrow_threat] run function glib.vector:classic/get_from_motion
execute as @e[tag=arrow_threat] run function glib.vector:classic/normalize

# Get the "similarity" between the two vectors using a scalar product
execute as @e[tag=arrow_threat] run function glib.vector:classic/scalar_product

# Kill arrows that are too close to the villager and in direction of it
execute as @e[tag=arrow_threat,scores={glib.var0=500..}] run function scaffolding_rush:villager/arrow_shield_laser
execute at @e[tag=arrow_threat,scores={glib.var0=500..}] run particle smoke ~ ~ ~ 0 0 0 0.05 50 force
execute at @e[tag=arrow_threat,scores={glib.var0=500..}] run playsound minecraft:block.amethyst_cluster.break master @a[distance=..30] ~ ~ ~ 0.5 2 0.5

kill @e[tag=arrow_threat,scores={glib.var0=500..}]
tag @e remove arrow_threat