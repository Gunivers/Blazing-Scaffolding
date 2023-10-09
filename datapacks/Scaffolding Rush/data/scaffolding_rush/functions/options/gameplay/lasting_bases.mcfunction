
execute store success score #lasting_base options if score #lasting_base options matches 0

execute if score #lasting_base options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Lasting bases has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #lasting_base options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Lasting bases has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #lasting_base options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les bases pérennes ont été ","color":"gray"},{"text":"désactivés","color":"red"}]
execute unless score #lasting_base options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les bases pérennes ont été ","color":"gray"},{"text":"activés","color":"green"}]

scoreboard players set @s option.lasting_bases 0
scoreboard players enable @s option.lasting_bases

function scaffolding_rush:options/refresh
