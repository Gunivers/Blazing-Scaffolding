execute as @e[type=marker,tag=VolcanoPop] at @s run function glib.move:by_vector
scoreboard players remove @e[type=marker,tag=VolcanoPop] glib.vectorY 25

execute as @e[type=marker,tag=VolcanoPop] at @s run particle large_smoke ~ ~1.5 ~ 0.1 0.1 0.1 0.1 1 force
execute as @e[type=marker,tag=VolcanoPop] at @s run particle flame ~ ~1.5 ~ 0.1 0.1 0.1 0.1 3 force
# execute as @e[type=armor_stand,tag=VolcanoPop] at @s run particle lava ~ ~1.5 ~ 0.1 0.1 0.1 0.1 1 force

# Default behavior: no collision
scoreboard players set @e[type=marker,tag=VolcanoPop] glib.collision 0
# When the lava pop is in it's ascending phase, it collide only if there is a player in a 15 blocks radius
execute as @e[type=marker,tag=VolcanoPop,scores={glib.vectorY=1..}] at @s if entity @a[distance=..15] run scoreboard players set @s glib.collision 3
# When the lava pop is in it's descending phase, it collide only if there is a player in a 50 blocks radius
execute as @e[type=marker,tag=VolcanoPop,scores={glib.vectorY=..-1}] at @s if entity @a[distance=..50] run scoreboard players set @s glib.collision 3

# If no collision, no need to have an accurate precision
scoreboard players set @e[type=marker,tag=VolcanoPop,scores={glib.collision=0}] glib.precision 1000
# If collision is enable, we need to have a partially good precision (half a block)
scoreboard players set @e[type=marker,tag=VolcanoPop,scores={glib.collision=3}] glib.precision 500

# If no collision but the pop goes in the lava
execute as @e[type=marker,tag=VolcanoPop,scores={glib.collision=0,glib.lifetime=-90..}] at @s if block ~ ~ ~ magma_block run tag @s add Impact

# Impact affect
execute as @e[type=marker,tag=VolcanoPop,tag=Impact] at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[type=marker,tag=VolcanoPop,tag=Impact] at @s run particle explosion_emitter ~ ~1.7 ~ 0 0 0 0 1 force

execute as @e[type=marker,tag=VolcanoPop,tag=Impact] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #scaffolding_rush:scaffolding
kill @e[type=marker,tag=VolcanoPop,tag=Impact]