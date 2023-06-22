
execute store success score UseFireball options if score UseFireball options matches 0

execute if score UseFireball options matches 0 as @a run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fireball has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseFireball options matches 0 as @a run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fireball has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseFireball options matches 0 as @a run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La boule de feu ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score UseFireball options matches 0 as @a run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La boule de feu ","color":"gray"},{"text":"activée","color":"green"}]

execute if score UseFireball options matches 0 run scoreboard players set @a[tag=HaveItems] sc.item.fireball 0
execute unless score UseFireball options matches 0 run scoreboard players set @a[tag=HaveItems] sc.item.fireball 1
execute unless score UseFireball options matches 0 run scoreboard players set @a[tag=HaveItems] sc.item.real.fireball 1

scoreboard players set @s opt_fireball 0
scoreboard players enable @s opt_fireball

function scaffolding_rush:options/refresh
