playsound minecraft:ui.button.click ambient @a[distance=..10] ~ ~ ~ 0.5 1
scoreboard players operation @s option_team_number = TeamNumber options
scoreboard players operation @s option_team_number += 1 const
