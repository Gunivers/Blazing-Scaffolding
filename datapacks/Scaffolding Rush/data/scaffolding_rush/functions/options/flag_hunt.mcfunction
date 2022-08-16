
execute store success score flag_hunt options if score flag_hunt options matches 0

execute if score flag_hunt options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The flag hunt has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score flag_hunt options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The flag hunt has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score flag_hunt options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"La chasse aux drapeaux est ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score flag_hunt options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"La chasse aux drapeaux est ","color":"gray"},{"text":"activée","color":"green"}]


scoreboard players set @s opt_flag_hunt 0
scoreboard players enable @s opt_flag_hunt

function scaffolding_rush:options/refresh
