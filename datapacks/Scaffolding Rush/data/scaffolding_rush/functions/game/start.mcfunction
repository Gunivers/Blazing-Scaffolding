tp @e[type=marker,name="ScR_LavaLevel",limit=1] ~ 2 ~

tag @a remove TeamEliminated
tag @a remove player.item.have_egg
scoreboard players set @a listener.death 0

scoreboard players set @a listener.use.blue_spawn_egg 0
scoreboard players set @a listener.use.green_spawn_egg 0
scoreboard players set @a listener.use.red_spawn_egg 0
scoreboard players set @a listener.use.yellow_spawn_egg 0


#reset flaghunt timer
execute unless score #flag.take_over options matches 0 run scoreboard players set #flag.take_overCountdown data 0

#reset volcano timer
scoreboard players set VolcanoSummonTimer timer 0

execute as @a run function scaffolding_rush:player/item/clear
effect clear @a
effect give @a minecraft:instant_health 1 100 true
effect give @a minecraft:fire_resistance 20 100 true
execute if score Regen options matches 1 run effect give @s regeneration infinite 0 true
gamemode survival @a[team=!]

#give items
execute as @a[team=!] run function scaffolding_rush:game/give_items
scoreboard players set @a fireball_timer 0
scoreboard players set @a enderpearl_timer 0
scoreboard players set @a enderpearl_timer 0


function scaffolding_rush:broadcast/start
function scaffolding_rush:game/lava/sound

team modify blue seeFriendlyInvisibles true
team modify green seeFriendlyInvisibles true
team modify red seeFriendlyInvisibles true
team modify yellow seeFriendlyInvisibles true

execute if score PerformanceMode options matches 0 run function scaffolding_rush:game/ghostblocks

scoreboard players set #game.running data 1
scoreboard players set #game.loading data 0
scoreboard players set LavaCountdown data 0
