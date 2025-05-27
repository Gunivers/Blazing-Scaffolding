# Main Game
# =====================================

tag @a[tag=player.item.can_have_book] remove player.item.can_have_book


# Time counter
scoreboard players add #game.time.tick timer 1

# +++++++++++++++++++++++++++++++++++++
# Mains
# +++++++++++++++++++++++++++++++++++++

execute unless score #lava.period.tick options matches 0 run function scaffolding_rush:game/lava/__main__

execute if score #flag.take_over options matches 1 run function scaffolding_rush:game/flag/__main__
execute if score Volcano options matches 1 run function scaffolding_rush:game/volcano/__main__

function scaffolding_rush:game/music/__main__

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

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/build_limit

# Revive players from changed gamemode
execute if entity @e[tag=red_villager,tag=game_villager] run tag @a[team=red] remove TeamEliminated
execute if entity @e[tag=blue_villager,tag=game_villager] run tag @a[team=blue] remove TeamEliminated
execute if entity @e[tag=green_villager,tag=game_villager] run tag @a[team=green] remove TeamEliminated
execute if entity @e[tag=yellow_villager,tag=game_villager] run tag @a[team=yellow] remove TeamEliminated

function scaffolding_rush:game/team_elimination/trigger

# Glow player holding villagers
execute as @a[team=blue,gamemode=!spectator] store result score @s tmp run clear @s squid_spawn_egg 0
execute as @a[team=red,gamemode=!spectator] store result score @s tmp run clear @s mooshroom_spawn_egg 0
execute as @a[team=yellow,gamemode=!spectator] store result score @s tmp run clear @s blaze_spawn_egg 0
execute as @a[team=green,gamemode=!spectator] store result score @s tmp run clear @s slime_spawn_egg 0
effect give @a[gamemode=!spectator,scores={tmp=1..}] minecraft:glowing 1 1 true


# Test end of game
execute if score #game.end data matches 0 run function scaffolding_rush:game/stop/trigger
