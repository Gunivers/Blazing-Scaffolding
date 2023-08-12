
execute store success score FallDamage options if score FallDamage options matches 0

execute if score FallDamage options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fall damage has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score FallDamage options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fall damage has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score FallDamage options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les dégats de chutes ont été ","color":"gray"},{"text":"désactivés","color":"red"}]
execute unless score FallDamage options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les dégats de chutes ont été ","color":"gray"},{"text":"activés","color":"green"}]

execute if score FallDamage options matches 0 run gamerule fallDamage false
execute unless score FallDamage options matches 0 run gamerule fallDamage true

scoreboard players set @s opt_fall_damage 0
scoreboard players enable @s opt_fall_damage

function scaffolding_rush:options/refresh
