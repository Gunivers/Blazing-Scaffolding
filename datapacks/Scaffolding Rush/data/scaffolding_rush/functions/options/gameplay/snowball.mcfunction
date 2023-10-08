
execute store success score UseSnowball options if score UseSnowball options matches 0

execute if score UseSnowball options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Bumping Arrow has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseSnowball options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Bumping Arrow has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseSnowball options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les Flèche coup de poing ont été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score UseSnowball options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les Flèche coup de poing ont été ","color":"gray"},{"text":"activée","color":"green"}]

execute if score UseSnowball options matches 0 run scoreboard players set @a[tag=player.items.have_items] player.item.bumping_arrow_count 0
execute unless score UseSnowball options matches 0 run scoreboard players set @a[tag=player.items.have_items] player.item.bumping_arrow_count 15
execute unless score UseSnowball options matches 0 run scoreboard players set @a[tag=player.items.have_items] sc.item.real.snowball 1

scoreboard players set @s opt_snowball 0
scoreboard players enable @s opt_snowball

function scaffolding_rush:options/refresh
