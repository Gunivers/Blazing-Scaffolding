
#generated option function

execute store success score FastClimb options if score FastClimb options matches 0

execute if score FastClimb options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"Fast climb has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score FastClimb options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"Fast climb has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score FastClimb options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"La Monté rapide a été ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score FastClimb options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"La Monté rapide a été ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s opt_fast_climb 0
scoreboard players enable @s opt_fast_climb

function scaffolding_rush:options/refresh
