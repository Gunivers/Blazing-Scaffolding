# Main Game
# =====================================

# Time counter
scoreboard players add GameTimeTics global 1

execute as @a[gamemode=!spectator,tag=!Respawning,scores={killed=0}] at @s store result score @s XEntity run data get entity @s Pos[0]
execute as @a[gamemode=!spectator,tag=!Respawning,scores={killed=0}] at @s store result score @s YEntity run data get entity @s Pos[1]
execute as @a[gamemode=!spectator,tag=!Respawning,scores={killed=0}] at @s store result score @s ZEntity run data get entity @s Pos[2]

# +++++++++++++++++++++++++++++++++++++
# Mains
# +++++++++++++++++++++++++++++++++++++

function scaffolding_rush:game/death/__main__
function scaffolding_rush:game/lava/__main__
function scaffolding_rush:game/villager/__main__

execute if score FlagTakeOver options matches 1 run function scaffolding_rush:game/flag/__main__
execute if score Volcano options matches 1 run function scaffolding_rush:game/volcano/__main__

# =====================================

#can place on
execute as @a[nbt=!{SelectedItem: {}},gamemode=adventure] run gamemode survival
execute as @a[nbt={SelectedItem: {}},gamemode=survival] run gamemode adventure


# =====================================
# WorldBorder
# =====================================

#starts to shrink the wordborder if enabled (need to be before time increment)
execute unless score WorldborderShrink options matches 0 if score GameTimeTics global = WorldborderStartTimeTics global run function scaffolding_rush:game/shrink_worldborder

# Behind WB
execute store result score CurrentWBSize global run worldborder get
scoreboard players operation WBbyTwo global = CurrentWBSize global
scoreboard players operation WBbyTwo global /= #2 global
scoreboard players set -WBbyTwo global 0
scoreboard players operation -WBbyTwo global -= WBbyTwo global
# offset game map
scoreboard players operation WBbyTwo global += #1000 const
scoreboard players operation -WBbyTwo global += #1000 const
scoreboard players operation WBbyTwo global += #1 const
scoreboard players operation -WBbyTwo global -= #1 const

execute as @a[gamemode=!spectator,tag=InGame] at @s run function scaffolding_rush:game/correct_coordinates

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/build_limit

# =====================================
# End of game
# =====================================

# Test end of game
execute if score GameEnd global matches 0 run function scaffolding_rush:game/test_end

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
scoreboard players set RemainingTeam global 0
execute if entity @a[team=blue,tag=!TeamEliminated] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=green,tag=!TeamEliminated] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=red,tag=!TeamEliminated] run scoreboard players add RemainingTeam global 1
execute if entity @a[team=yellow,tag=!TeamEliminated] run scoreboard players add RemainingTeam global 1

