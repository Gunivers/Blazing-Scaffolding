# Execute as & at the player
# Called by function scaffolding_rush:player/death/trigger

function scaffolding_rush:player/death/just_died

execute if entity @s run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s"},{"text":" fell into the lava","color":"gray"}]
execute if entity @s run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s"},{"text":" est tombé·e dans la lave","color":"gray"}]

effect give @s resistance 3 127 true
effect give @s fire_resistance 3 127 true

playsound minecraft:entity.player.hurt_on_fire ambient @s ~ ~ ~

playsound blazing_scaffolding:lava_drown master @a[distance=..30] ~ ~ ~ 1 1 0

summon armor_stand ~ ~ ~ {Tags:["player.death.drown_in_lava.animation","player.death.drown_in_lava.animation.new"],NoGravity:1,Small:1,Marker:1,Invisible:1}

tp @e[tag=player.death.drown_in_lava.animation.new,limit=1,sort=nearest] @s
ride @s mount @e[tag=player.death.drown_in_lava.animation.new,limit=1,sort=nearest]

scoreboard players set @e[tag=player.death.drown_in_lava.animation.new] player.death.animation 40
scoreboard players set @s player.death.animation 40
tag @s add player.death.drown_in_lava

tag @e[tag=player.death.drown_in_lava.animation.new] remove player.death.drown_in_lava.animation.new