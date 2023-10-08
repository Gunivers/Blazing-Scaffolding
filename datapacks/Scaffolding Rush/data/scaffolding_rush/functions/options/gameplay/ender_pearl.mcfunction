
execute store success score UseEnderPearl options if score UseEnderPearl options matches 0

execute if score UseEnderPearl options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The ender pearl has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseEnderPearl options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The ender pearl has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseEnderPearl options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La perle de l'Ender ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score UseEnderPearl options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La perle de l'Ender ","color":"gray"},{"text":"activée","color":"green"}]

execute if score UseEnderPearl options matches 0 run scoreboard players set @a[tag=player.items.have_items] player.item.ender_pearl_count 0
execute unless score UseEnderPearl options matches 0 run scoreboard players set @a[tag=player.items.have_items] player.item.ender_pearl_count 1
execute unless score UseEnderPearl options matches 0 run scoreboard players set @a[tag=player.items.have_items] sc.item.real.ender_pearl 1

scoreboard players set @s opt_ender_pearl 0
scoreboard players enable @s opt_ender_pearl

function scaffolding_rush:options/refresh
