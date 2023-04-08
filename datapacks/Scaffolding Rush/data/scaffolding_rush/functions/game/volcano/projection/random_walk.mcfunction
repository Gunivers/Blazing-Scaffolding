# Random walk on X
function glib.math:special/random
scoreboard players operation @s glib.res0 %= 100 glib.const
execute at @s if score @s glib.res0 matches ..49 positioned ~1 ~ ~ if block ~ ~ ~ scaffolding align xyz run tp @s ~0.5 ~0.5 ~0.5
execute at @s if score @s glib.res0 matches 50.. positioned ~-1 ~ ~ if block ~ ~ ~ scaffolding align xyz run tp @s ~0.5 ~0.5 ~0.5

# Random walk on Z
function glib.math:special/random
scoreboard players operation @s glib.res0 %= 100 glib.const
execute at @s if score @s glib.res0 matches ..49 positioned ~ ~ ~1 if block ~ ~ ~ scaffolding align xyz run tp @s ~0.5 ~0.5 ~0.5
execute at @s if score @s glib.res0 matches 50.. positioned ~ ~ ~-1 if block ~ ~ ~ scaffolding align xyz run tp @s ~0.5 ~0.5 ~0.5

# Random walk on Y
function glib.math:special/random
scoreboard players operation @s glib.res0 %= 100 glib.const
execute at @s if score @s glib.res0 matches ..24 positioned ~ ~1 ~ if block ~ ~ ~ scaffolding align xyz run tp @s ~0.5 ~0.5 ~0.5
execute at @s if score @s glib.res0 matches 25.. positioned ~ ~-1 ~ if block ~ ~ ~ scaffolding align xyz run tp @s ~0.5 ~0.5 ~0.5

# particle end_rod ~ ~1 ~ 0 0 0 0 1 force

scoreboard players remove #RandoWalk global 1
execute at @s if score #RandoWalk global matches 1.. run function scaffolding_rush:game/volcano/projection/random_walk