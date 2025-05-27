# Executed globally
# tellraw @a [{"text":"GLOBAL"},{"text":" > scaffolding_rush:player/animated_title/animation","color":"gray"}]

execute if entity @a[tag=player.animated_title.victory] run function scaffolding_rush:player/animated_title/type/victory
execute if entity @a[tag=player.animated_title.defeat] run function scaffolding_rush:player/animated_title/type/defeat
execute if entity @a[tag=player.animated_title.draw] run function scaffolding_rush:player/animated_title/type/draw
execute if entity @a[tag=player.animated_title.start] run function scaffolding_rush:player/animated_title/type/start

title @a[scores={player.animated_title.timer=1..}] subtitle {"text":" "}

playsound minecraft:ui.toast.challenge_complete master @a[tag=player.animated_title.winner,scores={player.animated_title.timer=1}] ~ ~ ~ 2 1 1
playsound minecraft:entity.wither.death master @a[tag=player.animated_title.loser,scores={player.animated_title.timer=1}] ~ ~ ~ 2 1 1

scoreboard players add @a[scores={player.animated_title.timer=1..}] player.animated_title.timer 1
execute as @a[scores={player.animated_title.timer=30..}] at @s run function scaffolding_rush:player/animated_title/stop 
