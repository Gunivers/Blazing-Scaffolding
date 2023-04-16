#__________________________________________________
# Get working vector

execute if entity @s[tag=!glib.move.by_vector.rest] run scoreboard players operation move.vectorX glib = @s glib.vectorX
execute if entity @s[tag=!glib.move.by_vector.rest] run scoreboard players operation move.vectorY glib = @s glib.vectorY
execute if entity @s[tag=!glib.move.by_vector.rest] run scoreboard players operation move.vectorZ glib = @s glib.vectorZ

#__________________________________________________
# Collision

execute if entity @s[tag=!ender_pearl,scores={glib.collision=1..}] at @s unless block ~ ~1.7 ~ air run tag @s add glib.collision
execute if entity @s[tag=ender_pearl,scores={glib.collision=1..}] at @s unless block ~ ~2.1 ~ air run tag @s add glib.collision
tag @s[tag=glib.collision] add Impact

# execute as @e[tag=ender_pearl,tag=!Impact] at @s run summon block_display ~-0.05 ~1.65 ~-0.05 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:white_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
# execute as @e[tag=ender_pearl,tag=Impact,tag=AlreadyDisplayed] at @s run summon block_display ~-0.06 ~1.66 ~-0.06 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]},block_state:{Name:"minecraft:black_concrete"},Tags:["bs.debug","bs.debug.move.by_vector","bs.move.TrajectoryDisplay"]}
# tag @e[tag=ender_pearl,tag=Impact] add AlreadyDisplayed

#__________________________________________________
# Apply movement

execute if entity @s[tag=!glib.collision] run scoreboard players operation @s glib.locX = move.vectorX glib
execute if entity @s[tag=!glib.collision] run scoreboard players operation @s glib.locY = move.vectorY glib
execute if entity @s[tag=!glib.collision] run scoreboard players operation @s glib.locZ = move.vectorZ glib
execute if entity @s[tag=!glib.collision] run function glib.location:add/accuracy/10-3

#__________________________________________________
# Loop

scoreboard players remove move.decomposition.factor glib 1
execute if entity @s[tag=!glib.collision] at @s if score move.decomposition.factor glib matches 1.. run function glib.move:by_vector/child/loop
