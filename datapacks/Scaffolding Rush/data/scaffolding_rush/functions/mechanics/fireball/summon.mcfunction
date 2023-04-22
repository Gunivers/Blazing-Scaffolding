summon armor_stand ~ ~-1.7 ~ {NoGravity:1,Invisible:1,Tags:["Fireball","FireballNew"],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}
playsound minecraft:entity.player.hurt_on_fire master @a[distance=..30] ~ ~ ~ 2 2 1

function glib.vector:classic/get_from_motion

scoreboard players operation @e[tag=FireballNew] glib.vectorX = @s glib.vectorX
scoreboard players operation @e[tag=FireballNew] glib.vectorY = @s glib.vectorY
scoreboard players operation @e[tag=FireballNew] glib.vectorZ = @s glib.vectorZ
scoreboard players set @e[tag=FireballNew] glib.collision 5
scoreboard players set @e[tag=FireballNew] glib.precision 100

tag @e remove FireballNew

kill @s
