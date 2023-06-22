
execute unless entity @e[type=marker,tag=TutorialCellClear,limit=1] in scaffolding_rush:tutorialworld run summon marker -21.5 1 0.5 {Tags:["TutorialCellClear"]}
execute store result entity @e[type=marker,tag=TutorialCellClear,limit=1] Pos[2] double 1 run scoreboard players get @s TutorialCellZ
execute as @e[type=marker,tag=TutorialCellClear] at @s run function scaffolding_rush:tutorial/room/clear

execute in overworld run tp @s 0 25 0 0 0
spawnpoint @s 0 25 0

scoreboard players reset @s ExitTutorial

tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"Congratulations for going through the tutorial !\nYou can use ","color":"gray"},{"text":"/trigger ExitTutorial","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger ExitTutorial"},"hoverEvent":{"action":"show_text","contents":"Suggest command"}},{"text":" to ","color":"gray"},{"text":"skip it","color":"gold"},{"text":" next time","color":"gray"}]
tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Félicitation pour avoir fait le tutoriel !\nVous pouvez utilisez ","color":"gray"},{"text":"/trigger ExitTutorial","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger ExitTutorial"},"hoverEvent":{"action":"show_text","contents":"Suggérer la commande"}},{"text":" pour ","color":"gray"},{"text":"le sauter","color":"gold"},{"text":" la prochaine fois","color":"gray"}]

tag @s remove TutorialMessage1
tag @s remove TutorialMessage2
tag @s remove TutorialMessage3
tag @s remove TutorialMessage4
tag @s remove TutorialMessage5

tag @s remove inTutorial
