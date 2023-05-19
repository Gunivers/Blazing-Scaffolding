
execute store success score UseFireball options if score UseFireball options matches 0

execute if score UseFireball options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The fireball has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseFireball options matches 0 run tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The fireball has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseFireball options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"La boule de feu ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score UseFireball options matches 0 run tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"La boule de feu ","color":"gray"},{"text":"activée","color":"green"}]

execute if score UseFireball options matches 0 run clear @a #scaffolding_rush:item/fireball
execute unless score UseFireball options matches 0 run loot give @s loot scaffolding_rush:item/fireball

scoreboard players set @s opt_fireball 0
scoreboard players enable @s opt_fireball

function scaffolding_rush:options/refresh
