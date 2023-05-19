
execute store success score UseEnderPearl options if score UseEnderPearl options matches 0

execute if score UseEnderPearl options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The ender pearl has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseEnderPearl options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The ender pearl has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseEnderPearl options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'ender pearl ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score UseEnderPearl options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"L'ender pearl ","color":"gray"},{"text":"activée","color":"green"}]

execute if score UseEnderPearl options matches 0 run clear @a #scaffolding_rush:item/ender_pearl
execute unless score UseEnderPearl options matches 0 run loot give @s loot scaffolding_rush:item/ender_pearl

scoreboard players set @s opt_ender_pearl 0
scoreboard players enable @s opt_ender_pearl

function scaffolding_rush:options/refresh
