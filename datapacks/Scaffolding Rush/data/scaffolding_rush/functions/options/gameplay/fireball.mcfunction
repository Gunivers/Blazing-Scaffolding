
execute store success score #player.item.fireball.enabled options if score #player.item.fireball.enabled options matches 0

execute if score #player.item.fireball.enabled options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fireball has been ","color":"gray"},{"text":"deactivated","color":"red"}]
execute unless score #player.item.fireball.enabled options matches 0 run tellraw @a[scores={option_language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Fireball has been ","color":"gray"},{"text":"activated","color":"green"}]

execute if score #player.item.fireball.enabled options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La boule de feu ","color":"gray"},{"text":"désactivée","color":"red"}]
execute unless score #player.item.fireball.enabled options matches 0 run tellraw @a[scores={option_language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"La boule de feu ","color":"gray"},{"text":"activée","color":"green"}]

scoreboard players set @s option_fireball 0
scoreboard players enable @s option_fireball

function scaffolding_rush:options/refresh
