# Execute as & at the player

execute if score DevelopementMode data matches 1 run say player/death/kill/lava

execute if entity @s run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s"},{"text":" fell into the lava","color":"gray"}]
execute if entity @s run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s"},{"text":" est tombé·e dans la lave","color":"gray"}]

playsound blazing_scaffolding:lava_drown master @a[distance=..30] ~ ~ ~ 1 1 0

summon armor_stand ~ ~ ~ {Tags:["player.death.animation.vehicle","player.death.animation.vehicle.new"],NoGravity:1,Small:1,Marker:1,Invisible:1}

tp @e[tag=player.death.animation.vehicle.new,limit=1,sort=nearest] @s
ride @s mount @e[tag=player.death.animation.vehicle.new,limit=1,sort=nearest]

scoreboard players set @e[tag=player.death.animation.vehicle.new] player.death.animation 40
scoreboard players set @s player.death.animation 40
