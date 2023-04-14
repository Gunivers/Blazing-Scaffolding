tp @e[type=marker,name="ScR_LavaLevel",limit=1] ~ 2 ~

tag @a remove TeamEliminated
tag @a remove has_egg
scoreboard players set @a killed 0

scoreboard players set @a bluePlaced 0
scoreboard players set @a greenPlaced 0
scoreboard players set @a redPlaced 0
scoreboard players set @a yellowPlaced 0


#reset flaghunt timer
execute unless score flag_take_over options matches 0 run scoreboard players set FlagTakeOverCountdown global 0

#reset volcano timer
scoreboard players set VolcanoSummonTimer timer 0

clear @a
effect clear @a
effect give @a minecraft:instant_health 1 100 true
effect give @a minecraft:fire_resistance 20 100 true
gamemode survival @a[team=!]

#give items
execute as @a[team=!] run function scaffolding_rush:game/give_items


function scaffolding_rush:broadcast/start
function scaffolding_rush:game/lava/sound

team modify blue seeFriendlyInvisibles true
team modify green seeFriendlyInvisibles true
team modify red seeFriendlyInvisibles true
team modify yellow seeFriendlyInvisibles true

execute if score PerformanceMode options matches 0 run function scaffolding_rush:game/ghostblocks

scoreboard players set GameRunning global 1
scoreboard players set GameLoading global 0
scoreboard players set LavaCountdown global 0
