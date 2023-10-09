tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"☠ Team ","color":"gray"},{"text":"Green ","color":"green"},{"text":"Eliminated ☠","color":"gray"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"☠ L'équipe ","color":"gray"},{"text":"Verte ","color":"green"},{"text":"est éliminée ☠","color":"gray"}]
tag @a[team=green] add TeamEliminated
playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 1000 0.8
