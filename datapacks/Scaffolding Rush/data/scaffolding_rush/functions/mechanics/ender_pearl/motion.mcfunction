execute as @e[tag=ender_pearl] at @s run function glib.move:by_vector
execute as @e[tag=ender_pearl] at @s run particle dust 0.314 0 0.604 1 ~ ~2.1 ~ 0 0 0 0 1 force

# execute as @e[tag=ender_pearl] at @s run particle dust 1 0 0 1 ~ ~1.7 ~ 0 0 0 0 1 force
# execute as @e[type=ender_pearl] at @s run particle dust 0 0 1 1 ~ ~ ~ 0 0 0 0 1 force

# Gravity
scoreboard players remove @e[tag=ender_pearl,tag=!Impact] glib.vectorY 30

# Air resistance
scoreboard players operation @e[tag=ender_pearl,tag=!Impact] glib.vectorX *= 1000 glib.const
scoreboard players operation @e[tag=ender_pearl,tag=!Impact] glib.vectorY *= 1000 glib.const
scoreboard players operation @e[tag=ender_pearl,tag=!Impact] glib.vectorZ *= 1000 glib.const
scoreboard players operation @e[tag=ender_pearl,tag=!Impact] glib.vectorX /= 1010 glib.const
scoreboard players operation @e[tag=ender_pearl,tag=!Impact] glib.vectorY /= 1010 glib.const
scoreboard players operation @e[tag=ender_pearl,tag=!Impact] glib.vectorZ /= 1010 glib.const

execute as @e[tag=ender_pearl] at @s run tp @s ~ ~ ~ ~10 ~

scoreboard players set @e[tag=ender_pearl,scores={glib.lifetime=0..}] glib.lifetime -200


# execute as @e[tag=ender_pearl,tag=Impact] at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 2 1 1
# execute as @e[tag=ender_pearl,tag=Impact] at @s run particle explosion_emitter ~ ~1.7 ~ 0 0 0 0 1 force

# execute as @e[tag=ender_pearl,tag=Impact] at @s run summon block_display ~-0.05 ~1.6 ~-0.05 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:blue_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}

# Looking at the situation
execute as @e[tag=ender_pearl,tag=Impact] at @s positioned ~ ~2.1 ~ if block ~ ~ ~ scaffolding if block ~ ~1 ~ scaffolding run tag @s add TP_in_pillar
execute as @e[tag=ender_pearl,tag=Impact,tag=!TP_in_pillar] at @s positioned ~ ~2.1 ~ if block ~ ~ ~ scaffolding if block ~ ~1 ~ air run tag @s add TP_on_bridge
execute as @e[tag=ender_pearl,tag=Impact,tag=!TP_in_pillar,tag=!TP_on_bridge] at @s positioned ~ ~2.1 ~ if block ~ ~ ~ magma_block run tag @s add TP_cancelled
execute as @e[tag=ender_pearl,tag=Impact,tag=!TP_in_pillar,tag=!TP_on_bridge] at @s positioned ~ ~2.1 ~ if block ~ ~ ~ lava run tag @s add TP_cancelled
tag @e[tag=ender_pearl,tag=Impact,tag=!TP_in_pillar,tag=!TP_on_bridge,tag=!TP_cancelled] add TP_classical


# If the pearl goes beyond the walls, it is cancelled
execute as @e[tag=ender_pearl] at @s run function glib.location:get
execute if score GameRunning global matches 1 run scoreboard players operation @e[tag=ender_pearl] glib.locX -= 1000 glib.const
execute if score GameRunning global matches 1 run scoreboard players operation @e[tag=ender_pearl] glib.locZ -= 1000 glib.const
scoreboard players operation @e[tag=ender_pearl,scores={glib.locX=..-1}] glib.locX *= -1 glib.const
scoreboard players operation @e[tag=ender_pearl,scores={glib.locZ=..-1}] glib.locZ *= -1 glib.const
scoreboard players operation @e[tag=ender_pearl] glib.locX *= 2 glib.const
scoreboard players operation @e[tag=ender_pearl] glib.locZ *= 2 glib.const
execute as @e[tag=ender_pearl] if score WBSize options <= @s glib.locX run tag @s add Impact
execute as @e[tag=ender_pearl] if score WBSize options <= @s glib.locX run tag @s add TP_cancelled
execute as @e[tag=ender_pearl] if score WBSize options <= @s glib.locZ run tag @s add Impact
execute as @e[tag=ender_pearl] if score WBSize options <= @s glib.locZ run tag @s add TP_cancelled

# execute if entity @e[tag=ender_pearl,tag=Impact,tag=TP_in_pillar] run say TP in pillar
# execute if entity @e[tag=ender_pearl,tag=Impact,tag=TP_on_bridge] run say TP on bridge
# execute if entity @e[tag=ender_pearl,tag=Impact,tag=TP_cancelled] run say TP cancelled
# execute if entity @e[tag=ender_pearl,tag=Impact,tag=TP_classical] run say TP classical

# If TP in pillar, place the player at the same height, but inside the pillar
execute as @e[tag=ender_pearl,tag=TP_in_pillar] at @s positioned ~ ~2.1 ~ align xyz run tp @s ~0.5 ~ ~0.5

# If TP on bridge, place the player on top of the bridge
execute as @e[tag=ender_pearl,tag=TP_on_bridge] at @s positioned ~ ~2.1 ~ align xyz run tp @s ~0.5 ~1 ~0.5

# If classical TP, going back to point before collision
scoreboard players set @e[tag=ender_pearl,tag=TP_classical] glib.collision 0
scoreboard players operation @e[tag=ender_pearl,tag=TP_classical] glib.vectorX *= -1 glib.const
scoreboard players operation @e[tag=ender_pearl,tag=TP_classical] glib.vectorY *= -1 glib.const
scoreboard players operation @e[tag=ender_pearl,tag=TP_classical] glib.vectorZ *= -1 glib.const
execute as @e[tag=ender_pearl,tag=TP_classical] run tag @s add glib.config.override
execute as @e[tag=ender_pearl,tag=TP_classical] run scoreboard players operation vector.fastNormalization.lenght glib.config = @s glib.precision
execute as @e[tag=ender_pearl,tag=TP_classical] run function glib.vector:classic/fast_normalize
tag @e[tag=ender_pearl,tag=TP_classical] remove glib.collision
execute as @e[tag=ender_pearl,tag=TP_classical] at @s run function glib.move:by_vector

# execute as @e[tag=ender_pearl,tag=TP_classical] at @s run summon block_display ~-0.05 ~1.7 ~-0.05 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:red_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}

# Teleport if not cancelled
execute as @e[tag=ender_pearl,tag=Impact] run function scaffolding_rush:mechanics/ender_pearl/on_impact

kill @e[tag=ender_pearl,tag=Impact]