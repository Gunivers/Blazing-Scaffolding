playsound minecraft:ui.button.click ambient @a[distance=..30] ~ ~ ~ 0.5 1

clear @a #scaffolding_rush:colored_items
team leave @a[team=!spectator] 
tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Teams randomized","color":"gray"}]
tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Equipes mélangées","color":"gray"}]

function scaffolding_rush:team/randomize/loop
