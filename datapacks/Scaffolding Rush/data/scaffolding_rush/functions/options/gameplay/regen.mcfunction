
execute store success score #gameplay.regeneration.enabled options if score #gameplay.regeneration.enabled options matches 0

execute if score #gameplay.regeneration.enabled options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Regeneration has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #gameplay.regeneration.enabled options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Regeneration has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #gameplay.regeneration.enabled options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La Régénération a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score #gameplay.regeneration.enabled options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La Régénération a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s option.regen 0
scoreboard players enable @s option.regen
function scaffolding_rush:options/refresh
