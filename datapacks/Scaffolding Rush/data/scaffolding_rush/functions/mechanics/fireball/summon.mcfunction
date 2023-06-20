summon marker ~ ~-1.7 ~ {Tags:["Fireball","FireballNew"]}
playsound minecraft:entity.ghast.shoot master @a[distance=..30] ~ ~ ~ 2 2 1

tag @s add eggSelect

execute as @a store result score @s playerID run data get entity @s UUID[0]
execute store result score @s interactionID run data get entity @s Owner[0]

execute as @a if score @s playerID = @e[type=minecraft:egg,tag=eggSelect,limit=1] interactionID run tag @s add playerSelect

scoreboard players remove @a[tag=playerSelect] sc.item.real.fireball 1

function glib.vector:classic/get_from_motion

scoreboard players operation @e[type=marker,tag=FireballNew] glib.vectorX = @s glib.vectorX
scoreboard players operation @e[type=marker,tag=FireballNew] glib.vectorY = @s glib.vectorY
scoreboard players operation @e[type=marker,tag=FireballNew] glib.vectorZ = @s glib.vectorZ
scoreboard players set @e[type=marker,tag=FireballNew] glib.collision 5
scoreboard players set @e[type=marker,tag=FireballNew] glib.precision 100
scoreboard players set @e[type=marker,tag=FireballNew] glib.lifetime -100

tag @e remove FireballNew
tag @s remove eggSelect
tag @a remove playerSelect

kill @s
