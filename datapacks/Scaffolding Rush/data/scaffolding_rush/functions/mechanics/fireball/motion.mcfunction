execute as @e[tag=Fireball] at @s run function glib.move:by_vector
scoreboard players remove @e[tag=Fireball] glib.vectorY 50

execute as @e[tag=Fireball] at @s run tp @s ~ ~ ~ ~5 ~

execute as @e[tag=Fireball] at @s run particle large_smoke ~ ~1.5 ~ 0.3 0.3 0.3 0 1 force
execute as @e[tag=Fireball] at @s run particle flame ~ ~1.5 ~ 0.3 0.3 0.3 0.1 1 force

scoreboard players set @e[tag=Fireball,scores={glib.lifetime=0..}] glib.lifetime -200


execute as @e[tag=Fireball,tag=Impact] at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 1 1
execute as @e[tag=Fireball,tag=Impact] at @s run particle explosion_emitter ~ ~1.7 ~ 0 0 0 0 1 force

execute as @e[tag=Fireball,tag=Impact] at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace #scaffolding_rush:scaffolding
kill @e[tag=Fireball,tag=Impact]