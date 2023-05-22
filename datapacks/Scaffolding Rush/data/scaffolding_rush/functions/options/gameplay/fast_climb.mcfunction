
#generated option function

execute store success score FastClimb options if score FastClimb options matches 0

execute if score FastClimb options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The fast_climb option has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score FastClimb options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"The fast_climb option has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score FastClimb options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option fast_climb a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score FastClimb options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"L'option fast_climb a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s opt_fast_climb 0
scoreboard players enable @s opt_fast_climb

function scaffolding_rush:options/refresh
