summon marker ~ ~-1.7 ~ {Tags:["Fireball","FireballNew"]}
playsound minecraft:entity.ghast.shoot master @a[distance=..30] ~ ~ ~ 2 2 1

function glib.vector:classic/get_from_motion

scoreboard players operation @e[type=marker,tag=FireballNew] glib.vectorX = @s glib.vectorX
scoreboard players operation @e[type=marker,tag=FireballNew] glib.vectorY = @s glib.vectorY
scoreboard players operation @e[type=marker,tag=FireballNew] glib.vectorZ = @s glib.vectorZ
scoreboard players set @e[type=marker,tag=FireballNew] glib.collision 5
scoreboard players set @e[type=marker,tag=FireballNew] glib.precision 100
scoreboard players set @e[type=marker,tag=FireballNew] glib.lifetime -100

tag @e remove FireballNew

kill @s
