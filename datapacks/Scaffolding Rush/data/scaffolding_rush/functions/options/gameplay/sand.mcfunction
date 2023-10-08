
execute store success score UseSand options if score UseSand options matches 0

execute if score UseSand options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The sand has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseSand options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The sand has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseSand options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le sable a été ","color":"gray"},{"text":"désactivé","color":"red"}]
execute unless score UseSand options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Le sable a été ","color":"gray"},{"text":"activé","color":"green"}]

execute if score UseSand options matches 0 run scoreboard players set @a[tag=player.items.have_items] player.item.sand_count 0
execute if score UseSand options matches 1 run scoreboard players set @a[tag=player.items.have_items] player.item.sand_count 42

scoreboard players set @s opt_sand 0
scoreboard players enable @s opt_sand

function scaffolding_rush:options/refresh
