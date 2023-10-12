tp @e[type=marker,name="lava.level",limit=1] ~ 2 ~
scoreboard players set @s player.villager_kills 0

tag @a remove TeamEliminated
tag @a remove player.item.have_egg
scoreboard players set @a listener.death 0
tag @a remove lobby.already_seen_playground_message

scoreboard players set @a listener.use.blue_spawn_egg 0
scoreboard players set @a listener.use.green_spawn_egg 0
scoreboard players set @a listener.use.red_spawn_egg 0
scoreboard players set @a listener.use.yellow_spawn_egg 0

scoreboard players set @a player.item.spawn_egg.timer 0

function scaffolding_rush:game/music/__start__

#reset flaghunt timer
execute unless score #flag.take_over options matches 0 run scoreboard players set #flag.take_overCountdown data 0

#reset volcano timer
scoreboard players set VolcanoSummonTimer timer 0

effect clear @a

tag @a add player.item.can_have_items

effect give @a minecraft:instant_health 1 100 true
effect give @a minecraft:fire_resistance 20 100 true
gamemode survival @a[team=!spectator]
execute as @a[team=!spectator] run function scaffolding_rush:player/animated_title/start {type:"start"}

# Start message
title @a times 0 20 0
execute if score Language data matches 0 run title @a title {"text":"Here we go!","color":"gold"}
execute if score Language data matches 1 run title @a title {"text":"C'est parti !","color":"gold"}
execute as @a at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1000 2 1

#Bossbar
execute if score UseTimeLimit options matches 0 unless score #lava.period.second options matches 0 run bossbar set minecraft:filling_lava players @a
execute if score UseTimeLimit options matches 0 unless score #lava.period.second options matches 0 run bossbar set minecraft:filling_lava visible true
execute if score UseTimeLimit options matches 0 unless score #lava.period.second options matches 0 run execute store result bossbar filling_lava max run scoreboard players get #lava.period.tick options

execute unless score UseTimeLimit options matches 0 run bossbar set minecraft:time_limit players @a
execute unless score UseTimeLimit options matches 0 run bossbar set minecraft:time_limit visible true
execute unless score UseTimeLimit options matches 0 run execute store result bossbar time_limit max run scoreboard players get #game.time.left timer


function scaffolding_rush:game/lava/sound

team modify blue seeFriendlyInvisibles true
team modify green seeFriendlyInvisibles true
team modify red seeFriendlyInvisibles true
team modify yellow seeFriendlyInvisibles true

execute if score #performance_mode options matches 0 run function scaffolding_rush:game/ghostblocks

scoreboard players set #game.running data 1
scoreboard players set #game.loading data 0
scoreboard players set #lava timer 0
