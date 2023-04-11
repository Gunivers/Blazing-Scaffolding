# Executed on villagers

execute at @s positioned ~ ~1 ~ run tag @e[type=arrow,distance=..5] add arrow_threat

# execute as @e[tag=arrow_threat] run tellraw @a [{"text":"\n----------\nScalar product:"}]

# First vector
execute at @s positioned ~ ~1 ~ as @e[tag=arrow_threat] run function glib.vector:classic/get_ata
# execute as @e[tag=arrow_threat] run tellraw @a [{"text":" Motion: \u0020X="},{"score":{"name":"@s","objective":"glib.vectorX"}},{"text":" Y="},{"score":{"name":"@s","objective":"glib.vectorY"}},{"text":" Z="},{"score":{"name":"@s","objective":"glib.vectorZ"}}]

execute at @s positioned ~ ~1 ~ as @e[tag=arrow_threat] run function glib.vector:classic/normalize
# execute at @s positioned ~ ~1 ~ as @e[tag=arrow_threat] run tellraw @a ["",{"text":" Length: "},{"score":{"name":"@s","objective":"glib.res0"}}]
# execute as @e[tag=arrow_threat] run tellraw @a [{"text":" Motion: \u0020X="},{"score":{"name":"@s","objective":"glib.vectorX"}},{"text":" Y="},{"score":{"name":"@s","objective":"glib.vectorY"}},{"text":" Z="},{"score":{"name":"@s","objective":"glib.vectorZ"}}]

# execute as @e[tag=arrow_threat] run tellraw @a [{"text":" "}]

# Second vector
execute as @e[tag=arrow_threat] store result score @s glib.var0 run data get entity @s Motion[0] 1000
execute as @e[tag=arrow_threat] store result score @s glib.var1 run data get entity @s Motion[1] 1000
execute as @e[tag=arrow_threat] store result score @s glib.var2 run data get entity @s Motion[2] 1000
# execute as @e[tag=arrow_threat] run tellraw @a [{"text":" Motion: \u0020X="},{"score":{"name":"@s","objective":"glib.var0"}},{"text":" Y="},{"score":{"name":"@s","objective":"glib.var1"}},{"text":" Z="},{"score":{"name":"@s","objective":"glib.var2"}}]

execute at @s positioned ~ ~1 ~ as @e[tag=arrow_threat] run function glib.vector:classic/swap_vector_and_var
# execute as @e[tag=arrow_threat] run tellraw @a [{"text":" Motion: \u0020X="},{"score":{"name":"@s","objective":"glib.vectorX"}},{"text":" Y="},{"score":{"name":"@s","objective":"glib.vectorY"}},{"text":" Z="},{"score":{"name":"@s","objective":"glib.vectorZ"}}]
execute at @s positioned ~ ~1 ~ as @e[tag=arrow_threat] run function glib.vector:classic/normalize
# execute at @s positioned ~ ~1 ~ as @e[tag=arrow_threat] run tellraw @a ["",{"text":" Length: "},{"score":{"name":"@s","objective":"glib.res0"}}]
# execute as @e[tag=arrow_threat] run tellraw @a [{"text":" Motion: \u0020X="},{"score":{"name":"@s","objective":"glib.vectorX"}},{"text":" Y="},{"score":{"name":"@s","objective":"glib.vectorY"}},{"text":" Z="},{"score":{"name":"@s","objective":"glib.vectorZ"}}]

# execute as @e[tag=arrow_threat] run tellraw @a [{"text":" "}]

execute at @s positioned ~ ~1 ~ as @e[tag=arrow_threat] run function glib.vector:classic/scalar_product
# execute as @e[tag=arrow_threat] run tellraw @a ["",{"text":" Products: X="},{"score":{"name":"@s","objective":"glib.var3"}},{"text":" Y="},{"score":{"name":"@s","objective":"glib.var4"}},{"text":" Z="},{"score":{"name":"@s","objective":"glib.var5"}},{"text":"\n Result: "},{"score":{"name":"@s","objective":"glib.var0"}}]


execute at @s positioned ~ ~1 ~ at @e[tag=arrow_threat,scores={glib.var0=500..}] run particle smoke ~ ~ ~ 0 0 0 0.05 50 force
execute at @s positioned ~ ~1 ~ at @e[tag=arrow_threat,scores={glib.var0=500..}] run playsound minecraft:block.amethyst_cluster.break master @a[distance=..30] ~ ~ ~ 0.5 2 0.5
execute at @s positioned ~ ~1 ~ run kill @e[tag=arrow_threat,scores={glib.var0=500..}]

tag @e remove arrow_threat