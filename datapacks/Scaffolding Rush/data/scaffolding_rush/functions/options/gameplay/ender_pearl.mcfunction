
execute store success score #player.item.ender_pearl.enabled options if score #player.item.ender_pearl.enabled options matches 0

execute if score #player.item.ender_pearl.enabled options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The ender pearl has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #player.item.ender_pearl.enabled options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The ender pearl has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #player.item.ender_pearl.enabled options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La perle de l'Ender ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score #player.item.ender_pearl.enabled options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La perle de l'Ender ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s option_ender_pearl 0
scoreboard players enable @s option_ender_pearl

function scaffolding_rush:options/refresh
