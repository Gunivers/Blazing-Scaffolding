execute as @e[tag=VolcanoPop] at @s run function glib.move:by_vector
scoreboard players remove @e[tag=VolcanoPop] glib.vectorY 25

execute as @e[tag=VolcanoPop] at @s run tp @s ~ ~ ~ ~5 ~

execute as @e[tag=VolcanoPop] at @s run particle large_smoke ~ ~1.5 ~ 0.3 0.3 0.3 0 1 force
execute as @e[tag=VolcanoPop] at @s run particle flame ~ ~1.5 ~ 0.3 0.3 0.3 0.1 1 force

# Set live to 10s and change collision type after 5 ticks
scoreboard players set @e[tag=VolcanoPop,scores={glib.lifetime=0..}] glib.lifetime -200
scoreboard players set @e[tag=VolcanoPop,scores={glib.lifetime=..-195}] glib.collision 3

execute as @e[tag=VolcanoPop,tag=Impact] at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[tag=VolcanoPop,tag=Impact] at @s run particle explosion_emitter ~ ~1.7 ~ 0 0 0 0 1 force

execute as @e[tag=VolcanoPop,tag=Impact] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #scaffolding_rush:scaffolding
kill @e[tag=VolcanoPop,tag=Impact]