
stopsound @a record
scoreboard players add #game.music.current data 1

# Looping over classical musics
execute if score #game.music.current data matches 4 run scoreboard players set #game.music.current data 1
# Looping over hardcore musics
execute if score #game.music.current data matches 6 run scoreboard players set #game.music.current data 4

execute if score #game.music.current data matches 1 run scoreboard players set #game.music.timer timer 4780
execute if score #game.music.current data matches 1 as @a at @s run playsound blazing_scaffolding:classic_theme_1 record @s ~ ~ ~ 0.5 1 0

execute if score #game.music.current data matches 2 run scoreboard players set #game.music.timer timer 3200
execute if score #game.music.current data matches 2 as @a at @s run playsound blazing_scaffolding:classic_theme_2 record @s ~ ~ ~ 0.5 1 0

execute if score #game.music.current data matches 3 run scoreboard players set #game.music.timer timer 3100
execute if score #game.music.current data matches 3 as @a at @s run playsound blazing_scaffolding:classic_theme_3 record @s ~ ~ ~ 0.5 1 0

execute if score #game.music.current data matches 4 run scoreboard players set #game.music.timer timer 1900
execute if score #game.music.current data matches 4 as @a at @s run playsound blazing_scaffolding:hardcore_theme_1 record @s ~ ~ ~ 0.5 1 0

execute if score #game.music.current data matches 5 run scoreboard players set #game.music.timer timer 2380
execute if score #game.music.current data matches 5 as @a at @s run playsound blazing_scaffolding:hardcore_theme_2 record @s ~ ~ ~ 0.5 1 0