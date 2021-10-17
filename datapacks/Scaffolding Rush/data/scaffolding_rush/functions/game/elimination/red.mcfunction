tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"☠ Team ","color":"gray"},{"text":"Red ","color":"red"},{"text":"Eliminated ☠","color":"gray"}]
tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"☠ L'équipe ","color":"gray"},{"text":"Red ","color":"red"},{"text":"est éliminée ☠","color":"gray"}]

tag @a[team=red] add TeamEliminated
playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 1000 0.8
