
worldborder center 0 0

#remove bases markers
kill @e[tag=baseTeam]

execute as @e[type=armor_stand,tag=Flag] at @s run function scaffolding_rush:game/flag/stack_kill

function scaffolding_rush:game/summon_markers

execute if score #game.running data matches 1 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The game has been stopped","color":"gray"}]
execute if score #game.running data matches 1 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La partie a été stoppée","color":"gray"}]

execute if score #game.loading data matches 1 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The launching of the game has been stopped","color":"gray"}]
execute if score #game.loading data matches 1 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le lancement de la partie a été annulé","color":"gray"}]

execute if score DevelopementMode data matches 1 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Reset in progress...","color":"gray"}]
execute if score DevelopementMode data matches 1 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Rechargement en cours...","color":"gray"}]

execute as @e[type=villager] run function utils:clean_kill

schedule clear scaffolding_rush:team/create_base/create
schedule clear scaffolding_rush:broadcast/5s
schedule clear scaffolding_rush:broadcast/4s
schedule clear scaffolding_rush:broadcast/3s
schedule clear scaffolding_rush:broadcast/2s
schedule clear scaffolding_rush:broadcast/1s
schedule clear scaffolding_rush:game/start
schedule clear scaffolding_rush:game/lava/sound
function scaffolding_rush:game/lava/global_rising/stop
schedule clear scaffolding_rush:lobby/particles
schedule clear scaffolding_rush:game/ghostblocks

scoreboard players set LavaLevel data 2
scoreboard players set #lobby.active data 1
scoreboard players set #game.end data 0
scoreboard players set #game.running data 0
scoreboard players set #game.loading data 0
scoreboard players set #game.clear data 0
scoreboard players set #lobby.clear data 0
scoreboard players set WBAddTemp options 0
scoreboard players set Language options 0
execute unless entity @a[tag=inTutorial] run function scaffolding_rush:options/map/wb_size_refresh

scoreboard players set #villager.red respawn.timer -1
scoreboard players set #villager.blue respawn.timer -1
scoreboard players set #villager.yellow respawn.timer -1
scoreboard players set #villager.green respawn.timer -1

scoreboard players set @a listener.use.blue_spawn_egg 0
scoreboard players set @a listener.use.green_spawn_egg 0
scoreboard players set @a listener.use.red_spawn_egg 0
scoreboard players set @a listener.use.yellow_spawn_egg 0

scoreboard players reset * listener.death

team modify blue seeFriendlyInvisibles false
team modify green seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify yellow seeFriendlyInvisibles false

scoreboard players add #game.id data 1
scoreboard players operation @a game.id = #game.id data

tag @a remove TeamEliminated
tag @a remove player.item.have_egg
tag @a remove VillagerRecup
tag @a remove Respawning
tag @a remove flag_carry
tag @a remove flagOne
tag @a remove flagTwo
tag @a remove flagFive

clear @a
effect clear @a
execute as @a run function scaffolding_rush:player/item/clear
effect give @a minecraft:instant_health 1 100 true
execute if score Regen options matches 1 run effect give @s regeneration infinite 0 true

function scaffolding_rush:clear/game/launch
execute if entity @a[scores={trigger.reset=1..}] run function scaffolding_rush:clear/lobby/launch

execute unless score RandomTeam options matches 0 run team join random @a[team=!]

#advancement use_item
advancement revoke @a from scaffolding_rush:use_item

execute as @a[tag=!inTutorial] run function scaffolding_rush:lobby/refresh_items

scoreboard players reset @a trigger.start_game
scoreboard players reset @a trigger.reset

execute as @a run function scaffolding_rush:options/disable_all
execute if score #admin.exist options matches 1 as @a[tag=admin] run function scaffolding_rush:options/activate_all
execute if score #admin.exist options matches 0 as @a run function scaffolding_rush:options/activate_all
scoreboard players enable @a opt_admin

#Bossbar
bossbar set minecraft:filling_lava visible false
bossbar set minecraft:time_limit visible false

effect give @a minecraft:jump_boost 5 255 true

#confirmation message
execute if score DevelopementMode data matches 1 run tellraw @a ["",{"text":"[BS] ","color":"gold"},{"text":"Reset done","color":"gray"}]

execute as @a[tag=InGame] run function scaffolding_rush:lobby/tp_to_lobby

execute as @a if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset
