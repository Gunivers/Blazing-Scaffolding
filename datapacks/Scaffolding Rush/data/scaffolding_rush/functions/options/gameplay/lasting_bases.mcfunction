
execute store success score #gameplay.lasting_base.enabled options if score #gameplay.lasting_base.enabled options matches 0

execute if score #gameplay.lasting_base.enabled options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Lasting bases has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #gameplay.lasting_base.enabled options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Lasting bases has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #gameplay.lasting_base.enabled options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les bases pérennes ont été ","color":"gray"},{"text":"désactivés","color":"red"}]
execute unless score #gameplay.lasting_base.enabled options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Les bases pérennes ont été ","color":"gray"},{"text":"activés","color":"green"}]

scoreboard players set @s option_lasting_bases 0
scoreboard players enable @s option_lasting_bases

function scaffolding_rush:options/refresh
