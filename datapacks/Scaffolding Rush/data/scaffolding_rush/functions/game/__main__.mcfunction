# Main Game
# =====================================

# Time counter
scoreboard players add #game.time.tick timer 1

execute as @a[gamemode=!spectator,tag=!Respawning,scores={listener.death=0}] at @s store result score @s pos.x run data get entity @s Pos[0]
execute as @a[gamemode=!spectator,tag=!Respawning,scores={listener.death=0}] at @s store result score @s pos.y run data get entity @s Pos[1]
execute as @a[gamemode=!spectator,tag=!Respawning,scores={listener.death=0}] at @s store result score @s pos.z run data get entity @s Pos[2]

# +++++++++++++++++++++++++++++++++++++
# Mains
# +++++++++++++++++++++++++++++++++++++

function scaffolding_rush:game/death/__main__
function scaffolding_rush:game/lava/__main__
function scaffolding_rush:game/villager/__main__

execute if score #flag.take_over options matches 1 run function scaffolding_rush:game/flag/__main__
execute if score Volcano options matches 1 run function scaffolding_rush:game/volcano/__main__

# =====================================

#can place on
execute as @a[nbt=!{SelectedItem: {tag: {sc.item:1}}},gamemode=adventure] run gamemode survival
execute as @a[nbt={SelectedItem: {tag: {sc.item:1}}},gamemode=survival] run gamemode adventure


# =====================================
# WorldBorder
# =====================================

#starts to shrink the wordborder if enabled (need to be before time increment)
execute unless score WorldborderShrink options matches 0 if score #game.time.tick timer = #worldborder.start_time.tick options run function scaffolding_rush:game/shrink_worldborder

# Behind WB
execute store result score CurrentWBSize data run worldborder get
scoreboard players operation WBbyTwo data = CurrentWBSize data
scoreboard players operation WBbyTwo data /= 2 const
scoreboard players set -WBbyTwo data 0
scoreboard players operation -WBbyTwo data -= WBbyTwo data
# offset game map
scoreboard players operation WBbyTwo data += 1000 const
scoreboard players operation -WBbyTwo data += 1000 const
scoreboard players operation WBbyTwo data += 1 const
scoreboard players operation -WBbyTwo data -= 1 const

execute as @a[gamemode=!spectator,tag=InGame] at @s run function scaffolding_rush:game/correct_coordinates

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/build_limit

# =====================================
# End of game
# =====================================

# Test end of game
execute if score #game.end data matches 0 run function scaffolding_rush:game/test_end

# Elimination if team exist, unless players in game, unless players are respawning
execute if entity @a[team=blue,tag=!TeamEliminated] unless entity @a[team=blue,gamemode=!spectator] unless entity @a[team=blue,tag=Respawning] unless entity @e[type=villager,tag=blue_villager,tag=game_villager] run function scaffolding_rush:game/elimination/blue
execute if entity @a[team=green,tag=!TeamEliminated] unless entity @a[team=green,gamemode=!spectator] unless entity @a[team=green,tag=Respawning] unless entity @e[type=villager,tag=green_villager,tag=game_villager] run function scaffolding_rush:game/elimination/green
execute if entity @a[team=red,tag=!TeamEliminated] unless entity @a[team=red,gamemode=!spectator] unless entity @a[team=red,tag=Respawning] unless entity @e[type=villager,tag=red_villager,tag=game_villager] run function scaffolding_rush:game/elimination/red
execute if entity @a[team=yellow,tag=!TeamEliminated] unless entity @a[team=yellow,gamemode=!spectator] unless entity @a[team=yellow,tag=Respawning] unless entity @e[type=villager,tag=yellow_villager,tag=game_villager] run function scaffolding_rush:game/elimination/yellow

# Revive players from changed gamemode
execute if entity @a[team=blue,tag=TeamEliminated,gamemode=!spectator] run tag @a[team=blue] remove TeamEliminated
execute if entity @a[team=green,tag=TeamEliminated,gamemode=!spectator] run tag @a[team=gree] remove TeamEliminated
execute if entity @a[team=red,tag=TeamEliminated,gamemode=!spectator] run tag @a[team=red] remove TeamEliminated
execute if entity @a[team=yellow,tag=TeamEliminated,gamemode=!spectator] run tag @a[team=yellow] remove TeamEliminated

# Count active teams
scoreboard players set RemainingTeam data 0
execute if entity @a[team=blue,tag=!TeamEliminated] run scoreboard players add RemainingTeam data 1
execute if entity @a[team=green,tag=!TeamEliminated] run scoreboard players add RemainingTeam data 1
execute if entity @a[team=red,tag=!TeamEliminated] run scoreboard players add RemainingTeam data 1
execute if entity @a[team=yellow,tag=!TeamEliminated] run scoreboard players add RemainingTeam data 1

# Glow player holding villagers
execute as @a[team=blue,gamemode=!spectator] store result score @s glib run clear @s squid_spawn_egg 0
execute as @a[team=red,gamemode=!spectator] store result score @s glib run clear @s mooshroom_spawn_egg 0
execute as @a[team=yellow,gamemode=!spectator] store result score @s glib run clear @s blaze_spawn_egg 0
execute as @a[team=green,gamemode=!spectator] store result score @s glib run clear @s slime_spawn_egg 0

effect give @a[gamemode=!spectator,scores={glib=1..}] minecraft:glowing 1 1 true
