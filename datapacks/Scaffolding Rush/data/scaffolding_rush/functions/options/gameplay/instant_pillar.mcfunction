
execute store success score #gameplay.instant_pillar.enabled options if score #gameplay.instant_pillar.enabled options matches 0

execute if score #gameplay.instant_pillar.enabled options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Instant pillar has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #gameplay.instant_pillar.enabled options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Instant pillar has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #gameplay.instant_pillar.enabled options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les piliers instantés ont été ","color":"gray"},{"text":"désactivés","color":"red"}]
execute unless score #gameplay.instant_pillar.enabled options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les piliers instantés ont été ","color":"gray"},{"text":"activés","color":"green"}]

scoreboard players set @s option.instant_pil 0
scoreboard players enable @s option.instant_pil

function scaffolding_rush:options/refresh
