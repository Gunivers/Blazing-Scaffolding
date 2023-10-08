
execute store success score UseFireball options if score UseFireball options matches 0

execute if score UseFireball options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fireball has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score UseFireball options matches 0 run tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fireball has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score UseFireball options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La boule de feu ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score UseFireball options matches 0 run tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La boule de feu ","color":"gray"},{"text":"activée","color":"green"}]

execute if score UseFireball options matches 0 run scoreboard players set @a[tag=player.items.have_items] player.item.fireball_count 0
execute unless score UseFireball options matches 0 run scoreboard players set @a[tag=player.items.have_items] player.item.fireball_count 1
execute unless score UseFireball options matches 0 run scoreboard players set @a[tag=player.items.have_items] sc.item.real.fireball 1

scoreboard players set @s opt_fireball 0
scoreboard players enable @s opt_fireball

function scaffolding_rush:options/refresh
