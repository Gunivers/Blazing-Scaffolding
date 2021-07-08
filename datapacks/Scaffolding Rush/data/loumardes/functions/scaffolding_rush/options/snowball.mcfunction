
execute store success score UseSnowball options if score UseSnowball options matches 0

execute if score UseSnowball options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The snowball has been "},{"text":"desactivate","color":"red"}]
execute unless score UseSnowball options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The snowball has been "},{"text":"activate","color":"green"}]

scoreboard players set @a opt_snowball 0
scoreboard players enable @a opt_snowball

function loumardes:scaffolding_rush/options/refresh
