
execute store success score FallDamage options if score FallDamage options matches 0

execute if score FallDamage options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The Fall Damage has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score FallDamage options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The Fall Damage has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score FallDamage options matches 0 run gamerule fallDamage false
execute unless score FallDamage options matches 0 run gamerule fallDamage true

scoreboard players set @a opt_fall_damage 0
scoreboard players enable @a opt_fall_damage

function scaffolding_rush:scaffolding_rush/options/refresh
