
execute store success score #gameplay.fall_damage.enabled options if score #gameplay.fall_damage.enabled options matches 0

execute if score #gameplay.fall_damage.enabled options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fall damage has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #gameplay.fall_damage.enabled options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fall damage has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #gameplay.fall_damage.enabled options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les dégats de chutes ont été ","color":"gray"},{"text":"désactivés","color":"red"}]
execute unless score #gameplay.fall_damage.enabled options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les dégats de chutes ont été ","color":"gray"},{"text":"activés","color":"green"}]

execute if score #gameplay.fall_damage.enabled options matches 0 run gamerule fallDamage false
execute unless score #gameplay.fall_damage.enabled options matches 0 run gamerule fallDamage true

scoreboard players set @s option_fall_damage 0
scoreboard players enable @s option_fall_damage

function scaffolding_rush:options/refresh
