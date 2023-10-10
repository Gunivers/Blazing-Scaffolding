
# Players ---------------------------------------------------------------------

# Force leave & disable tutorial
execute as @a[tag=inTutorial] run function scaffolding_rush:tutorial/leave
function scaffolding_rush:tutorial/unload
scoreboard players reset @s trigger.tutorial

# Clear
clear @s
tag @a remove player.item.can_have_book
tag @a remove player.item.can_have_items
tag @a remove player.item.have_egg
execute as @a run function scaffolding_rush:options/disable_all

# Setup
gamemode adventure @a[team=!spectator]
gamemode spectator @a[team=spectator]
effect clear @a
effect give @a minecraft:instant_health 1 100 true
effect give @a minecraft:fire_resistance infinite 100 true
effect give @a minecraft:resistance infinite 100 true

# Displayer info & countdown
function scaffolding_rush:game/show_mode_description
schedule function utils:countdown/5s 5s

# Environment -----------------------------------------------------------------

# Clear entities & lobby
kill @e[type=falling_block]
kill @e[type=arrow]
schedule clear scaffolding_rush:lobby/particles

# Setup game map
worldborder center 1000 1000
function scaffolding_rush:game/summon_markers
teleport @e[type=marker,name="lava.level",limit=1] 1000 2 1000
schedule function scaffolding_rush:team/create_base/create 2.5s

# Update game state
scoreboard players set #lobby.active data 0
scoreboard players set #game.loading data 1
scoreboard players add #game.id data 1
scoreboard players operation @a game.id = #game.id data
scoreboard players set #game.time.tick timer 0

# Get game data ---------------------------------------------------------------

#initialize the countdown in tics
scoreboard players operation #game.time.left timer = #game.time.limit options
scoreboard players operation #game.time.left timer *= 20 const
scoreboard players operation #game.time.left timer *= 60 const

#get lavaspeed timer in tics
scoreboard players operation #lava.period.tick options = #lava.period.second options
scoreboard players operation #lava.period.tick options *= 20 const

#get villager respawn timer in tics
scoreboard players operation #villager.respawn.tick options = #villager.respawn.seconds options
scoreboard players operation #villager.respawn.tick options *= 20 const

scoreboard players operation #respawn.delay.tick options = #gameplay.respawn.delay.second options
scoreboard players operation #respawn.delay.tick options *= 20 const

#initialize the wordborder start time in tics
scoreboard players operation #worldborder.start_time.tick options = #worldborder.start_time.second options
scoreboard players operation #worldborder.start_time.tick options *= 20 const
scoreboard players operation #worldborder.start_time.tick options *= 60 const
execute if score #worldborder.start_time.second options matches 0 run scoreboard players operation #worldborder.start_time.tick options = 1 const

#reset villagers respawn countdowns
scoreboard players set $villager.red respawn.timer 0
scoreboard players set $villager.blue respawn.timer 0
scoreboard players set $villager.yellow respawn.timer 0
scoreboard players set $villager.green respawn.timer 0

#Reset teams scores, if relevant
execute unless score #flag.take_over options matches 0 run scoreboard objectives setdisplay sidebar Score
execute if score #flag.take_over options matches 0 run scoreboard objectives setdisplay sidebar
scoreboard players reset #blue.score data
scoreboard players reset #green.score data
scoreboard players reset #red.score data
scoreboard players reset #yellow.score data
execute unless score #flag.take_over options matches 0 if entity @a[team=blue] run scoreboard players set #blue.score data 0
execute unless score #flag.take_over options matches 0 if entity @a[team=green] run scoreboard players set #green.score data 0
execute unless score #flag.take_over options matches 0 if entity @a[team=red] run scoreboard players set #red.score data 0
execute unless score #flag.take_over options matches 0 if entity @a[team=yellow] run scoreboard players set #yellow.score data 0

#create the firsts flags to capture in the flaghunt gamemode
execute unless score #flag.take_over options matches 0 run function scaffolding_rush:game/flag/new_spreaded

# Start -----------------------------------------------------------------------

schedule function scaffolding_rush:game/start/start 10s