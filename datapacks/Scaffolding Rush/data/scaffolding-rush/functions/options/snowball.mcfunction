
execute store success score UseSnowball options if score UseSnowball options matches 0

execute if score UseSnowball options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The snowball has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score UseSnowball options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The snowball has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseSnowball options matches 0 run clear @a minecraft:snowball
execute unless score UseSnowball options matches 0 run give @a minecraft:snowball

scoreboard players set @a opt_snowball 0
scoreboard players enable @a opt_snowball

function scaffolding_rush:options/refresh
