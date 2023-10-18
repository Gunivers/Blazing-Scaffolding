# Execute as & at the player
# Called by function scaffolding_rush:player/death/trigger

function scaffolding_rush:player/death/just_died

execute if entity @s run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s"},{"text":" was killed","color":"gray"}]
execute if entity @s run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s"},{"text":" a été tué","color":"gray"}]

summon armor_stand ~ ~ ~ {Tags:["player.death.killed_by_player.animation","player.death.killed_by_player.animation.new"],NoGravity:1,Small:1,Marker:1,Invisible:1}

execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=player.death.killed_by_player.animation.new,limit=1,sort=nearest] ~ ~ ~ ~ 0
gamemode spectator @s
# spectate @e[tag=player.death.killed_by_player.animation.new,limit=1,sort=nearest] @s

scoreboard players set @e[tag=player.death.killed_by_player.animation.new] player.death.animation 40
scoreboard players set @s player.death.animation 40
tag @s add player.death.killed_by_player

scoreboard players set @s listener.death 0

tag @e[tag=player.death.killed_by_player.animation.new] remove player.death.killed_by_player.animation.new
