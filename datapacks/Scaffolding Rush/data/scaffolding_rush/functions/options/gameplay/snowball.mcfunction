
execute store success score UseSnowball options if score UseSnowball options matches 0

execute if score UseSnowball options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Bumping Arrow has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseSnowball options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Bumping Arrow has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseSnowball options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les Flèche coup de poing ont été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score UseSnowball options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les Flèche coup de poing ont été ","color":"gray"},{"text":"activée","color":"green"}]

execute if score UseSnowball options matches 0 run scoreboard players set @a[tag=player.item.can_have_items] player.item.bumping_arrow.count 0
execute unless score UseSnowball options matches 0 run scoreboard players set @a[tag=player.item.can_have_items] player.item.bumping_arrow.count 15

scoreboard players set @s opt_bumping_arrow 0
scoreboard players enable @s opt_bumping_arrow

function scaffolding_rush:options/refresh
