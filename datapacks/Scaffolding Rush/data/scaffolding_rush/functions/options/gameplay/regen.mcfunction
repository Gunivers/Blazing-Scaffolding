
execute store success score Regen options if score Regen options matches 0

execute if score Regen options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Regeneration has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score Regen options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Regeneration has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score Regen options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La Régénération a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score Regen options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La Régénération a été ","color":"gray"},{"text":"activée","color":"green"}]

execute if score Regen options matches 1 run effect give @a regeneration infinite 0 true
execute if score Regen options matches 0 run effect clear @a regeneration

scoreboard players set @s option.regen 0
scoreboard players enable @s option.regen
function scaffolding_rush:options/refresh
