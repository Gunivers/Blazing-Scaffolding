
execute store success score #player.item.bumping_arrow.enabled options if score #player.item.bumping_arrow.enabled options matches 0

execute if score #player.item.bumping_arrow.enabled options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Bumping Arrow has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #player.item.bumping_arrow.enabled options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Bumping Arrow has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #player.item.bumping_arrow.enabled options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les Flèche coup de poing ont été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score #player.item.bumping_arrow.enabled options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les Flèche coup de poing ont été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s option_bumping_arrow 0
scoreboard players enable @s option_bumping_arrow

function scaffolding_rush:options/refresh
