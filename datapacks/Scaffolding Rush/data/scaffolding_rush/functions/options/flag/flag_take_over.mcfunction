
execute store success score FlagTakeOver options if score FlagTakeOver options matches 0

execute if score FlagTakeOver options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The flag hunt has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score FlagTakeOver options matches 0 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The flag hunt has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score FlagTakeOver options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La chasse aux drapeaux est ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score FlagTakeOver options matches 0 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La chasse aux drapeaux est ","color":"gray"},{"text":"activée","color":"green"}]

#Hide the scores if disabled
execute unless score FlagTakeOver options matches 0 run scoreboard objectives setdisplay sidebar

scoreboard players set @s opt_flag_take_over 0
scoreboard players enable @s opt_flag_take_over

function scaffolding_rush:options/refresh
