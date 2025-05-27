
$tag @s add player.animated_title.$(type)

title @s times 0 20 20
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s[tag=!player.animated_title.defeat,tag=!player.animated_title.start] ~ ~ ~ 2 1 1
execute at @s run playsound minecraft:entity.wither.death master @s[tag=player.animated_title.defeat] ~ ~ ~ 2 1 1
execute at @s run playsound minecraft:entity.player.levelup master @s[tag=player.animated_title.start] ~ ~ ~ 2 1 1

scoreboard players set @s player.animated_title.timer 1
