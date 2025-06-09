playsound minecraft:ui.button.click ambient @a[distance=..10] ~ ~ ~ 0.5 1
scoreboard players operation @s option_preset = Preset options
scoreboard players operation @s option_preset -= 1 const
execute if score Preset options matches 1 run scoreboard players operation @s option_preset -= 1 const
