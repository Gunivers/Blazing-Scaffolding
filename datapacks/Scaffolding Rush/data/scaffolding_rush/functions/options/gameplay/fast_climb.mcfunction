
#generated option function

execute store success score #gameplay.fast_climb.enabled options if score #gameplay.fast_climb.enabled options matches 0

execute if score #gameplay.fast_climb.enabled options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fast climb has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #gameplay.fast_climb.enabled options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fast climb has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #gameplay.fast_climb.enabled options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La Monté rapide a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score #gameplay.fast_climb.enabled options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La Monté rapide a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s option_fast_climb 0
scoreboard players enable @s option_fast_climb

function scaffolding_rush:options/refresh
