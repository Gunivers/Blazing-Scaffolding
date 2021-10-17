
worldborder center 0 0

function scaffolding_rush:game/summon_markers

execute if score GameRunning global matches 1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The game has been stopped. Reset in progress...","color":"gray"}]
execute if score GameLoading global matches 1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The launching of the game has been stopped. Reset in progress...","color":"gray"}]
execute if score DevelopementMode global matches 1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Reset in progress...","color":"gray"}]

execute as @e[type=villager] run function scaffolding_rush:clean_kill

schedule clear scaffolding_rush:team/create_base/create
schedule clear scaffolding_rush:broadcast/5s
schedule clear scaffolding_rush:broadcast/4s
schedule clear scaffolding_rush:broadcast/3s
schedule clear scaffolding_rush:broadcast/2s
schedule clear scaffolding_rush:broadcast/1s
schedule clear scaffolding_rush:game/start
schedule clear scaffolding_rush:lava/sound
function scaffolding_rush:lava/global_rising/stop
schedule clear scaffolding_rush:lobby/particles
schedule clear scaffolding_rush:game/ghostblocks

scoreboard players set LavaLevel global 2
scoreboard players set GameLobby global 1
scoreboard players set GameEnd global 0
scoreboard players set GameRunning global 0
scoreboard players set GameLoading global 0
scoreboard players set ClearGame global 0
scoreboard players set ClearLobby global 0
scoreboard players set WBAddTemp options 0
scoreboard players set Language options 0
function scaffolding_rush:options/wb_size_refresh

scoreboard players set RedVillagerRespawn global -1
scoreboard players set BlueVillagerRespawn global -1
scoreboard players set YellowVillagerRespawn global -1
scoreboard players set GreenVillagerRespawn global -1

scoreboard players set @a bluePlaced 0
scoreboard players set @a greenPlaced 0
scoreboard players set @a redPlaced 0
scoreboard players set @a yellowPlaced 0

scoreboard players reset * killed

team modify blue seeFriendlyInvisibles false
team modify green seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify yellow seeFriendlyInvisibles false

scoreboard players add GameId global 1
scoreboard players operation @a gameId = GameId global

function scaffolding_rush:options/labels

tag @a remove TeamEliminated
tag @a remove has_egg
tag @a remove VillagerRecup
tag @a remove Respawning

gamemode survival @a
clear @a
effect clear @a
effect give @a minecraft:instant_health 1 100 true

function scaffolding_rush:clear/game/launch
execute if entity @a[scores={Reset=1..}] run function scaffolding_rush:clear/lobby/launch

execute unless score RandomTeam options matches 0 run team join random @a[team=!]

#advancement replenish
advancement revoke @a from scaffolding_rush:replenish

execute as @a run function scaffolding_rush:lobby/give_items

scoreboard players reset @a StartGame
scoreboard players reset @a Reset

execute as @a run function scaffolding_rush:options/disable_all
execute if score Admin options matches 1 as @a[tag=admin] run function scaffolding_rush:options/activate_all
execute if score Admin options matches 0 as @a run function scaffolding_rush:options/activate_all
scoreboard players enable @a opt_admin

#Bossbar
bossbar set minecraft:filling_lava visible false

effect give @a minecraft:jump_boost 5 255 true

#TODO mettre le message en dev seuleument
execute if score DevelopementMode global matches 1 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"Reset done","color":"gray"}]

execute as @a[tag=InGame] run function scaffolding_rush:lobby/tp_to_lobby

execute as @a if score TeamEgg options matches 1 run function scaffolding_rush:lobby/base_egg/reset
