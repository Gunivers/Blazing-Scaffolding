
execute store success score #player.item.sand.enabled options if score #player.item.sand.enabled options matches 0

execute if score #player.item.sand.enabled options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The sand has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #player.item.sand.enabled options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The sand has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #player.item.sand.enabled options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le sable a été ","color":"gray"},{"text":"désactivé","color":"red"}]
execute unless score #player.item.sand.enabled options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le sable a été ","color":"gray"},{"text":"activé","color":"green"}]

execute if score #player.item.sand.enabled options matches 0 run scoreboard players set @a[tag=player.item.can_have_items] player.item.sand.count 0
execute if score #player.item.sand.enabled options matches 1 run scoreboard players set @a[tag=player.item.can_have_items] player.item.sand.count 42

scoreboard players set @s option_sand 0
scoreboard players enable @s option_sand

function scaffolding_rush:options/refresh
