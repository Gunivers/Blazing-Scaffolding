
execute store success score UseEnderPearl options if score UseEnderPearl options matches 0

execute if score UseEnderPearl options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The ender pearl has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseEnderPearl options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The ender pearl has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseEnderPearl options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La perle de l'Ender ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score UseEnderPearl options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La perle de l'Ender ","color":"gray"},{"text":"activée","color":"green"}]

execute if score UseEnderPearl options matches 0 run scoreboard players set @a[tag=HaveItems] sc.item.ender_pearl 0
execute unless score UseEnderPearl options matches 0 run scoreboard players set @a[tag=HaveItems] sc.item.ender_pearl 1
execute unless score UseEnderPearl options matches 0 run scoreboard players set @a[tag=HaveItems] sc.item.real.ender_pearl 1

scoreboard players set @s opt_ender_pearl 0
scoreboard players enable @s opt_ender_pearl

function scaffolding_rush:options/refresh
