# Executed as and at the player
# tellraw @a [{"selector":"@s"},{"text":" > global:features/animated_title/stop","color":"gray"}]

tag @s remove player.animated_title.victory
tag @s remove player.animated_title.defeat
tag @s remove player.animated_title.draw
tag @s remove player.animated_title.start

scoreboard players set @s player.animated_title.timer 0
