execute as @e[tag=VolcanoPop] at @s run function glib.move:by_vector
scoreboard players remove @e[tag=VolcanoPop] glib.vectorY 25

execute as @e[tag=VolcanoPop] at @s run tp @s ~ ~ ~ ~5 ~

execute as @e[tag=VolcanoPop] at @s run particle large_smoke ~ ~1.5 ~ 0.3 0.3 0.3 0 1 force
execute as @e[tag=VolcanoPop] at @s run particle flame ~ ~1.5 ~ 0.3 0.3 0.3 0.1 1 force
execute as @e[tag=VolcanoPop,scores={glib.lifetime=5..}] at @s unless block ~ ~1.7 ~ air unless block ~ ~1.7 ~ cave_air run tag @s add VolcanoPopImpact
execute as @e[tag=VolcanoPopImpact] at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[tag=VolcanoPopImpact] at @s run particle explosion_emitter ~ ~1.7 ~ 0 0 0 0 1 force

execute as @e[tag=VolcanoPopImpact] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #scaffolding_rush:scaffolding
kill @e[tag=VolcanoPopImpact]