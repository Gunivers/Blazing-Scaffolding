tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"☠ Team ","color":"gray"},{"text":"Red ","color":"red"},{"text":"Eliminated ☠","color":"gray"}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"☠ L'équipe ","color":"gray"},{"text":"Red ","color":"red"},{"text":"est éliminée ☠","color":"gray"}]

tag @a[team=red] add TeamEliminated
playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 1000 0.8
