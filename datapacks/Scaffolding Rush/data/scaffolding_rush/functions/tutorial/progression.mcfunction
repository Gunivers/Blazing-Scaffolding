execute as @s at @s store result score @s XEntity run data get entity @s Pos[0]

execute if score @s[tag=!TutorialMessage1] XEntity matches -15.. run function scaffolding_rush:tutorial/messages/step1
execute if score @s[tag=!TutorialMessage2] XEntity matches -9.. run function scaffolding_rush:tutorial/messages/step2
execute if score @s[tag=!TutorialMessage3] XEntity matches -4.. run function scaffolding_rush:tutorial/messages/step3
execute if score @s[tag=!TutorialMessage4] XEntity matches 1.. run function scaffolding_rush:tutorial/messages/step4
execute if score @s[tag=!TutorialMessage5] XEntity matches 5.. run function scaffolding_rush:tutorial/messages/step5

execute if score @s XEntity matches 16.. run function scaffolding_rush:tutorial/leave

# Proposes to skip the tutorial if the player was in the tutorial for over 3 min
scoreboard players add @s sc.timer.tutorial 1
execute if score @s sc.timer.tutorial matches 3600 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"It looks like you are stuck in the tutorial, it was not meant to last this long\nUse ","color":"gray"},{"text":"/trigger lobby","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger lobby"},"hoverEvent":{"action":"show_text","contents":"Suggest command"}},{"text":" to ","color":"gray"},{"text":"skip it","color":"gold"}]
execute if score @s sc.timer.tutorial matches 3600 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Il semblerait que vous êtes bloqué dans le tutoriel, il n'était pas cencé durer si longtemps\nUtilisez ","color":"gray"},{"text":"/trigger lobby","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger lobby"},"hoverEvent":{"action":"show_text","contents":"Suggérer la commande"}},{"text":" pour ","color":"gray"},{"text":"en sortir","color":"gold"}]

# Proposes to skip the tutorial if the player was in the tutorial for over 3 min
scoreboard players add @s timer 1
execute if score @s timer matches 3600 run tellraw @s[scores={language=0}] ["",{"text":"[BS] ","color":"gold"},{"text":"It looks like you are stuck in the tutorial, it was not meant to last this long\nUse ","color":"gray"},{"text":"/trigger ExitTutorial","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger ExitTutorial"},"hoverEvent":{"action":"show_text","contents":"Suggest command"}},{"text":" to ","color":"gray"},{"text":"skip it","color":"gold"}]
execute if score @s timer matches 3600 run tellraw @s[scores={language=1}] ["",{"text":"[BS] ","color":"gold"},{"text":"Il semblerait que vous êtes bloqué dans le tutoriel, il n'était pas cencé durer si longtemps\nUtilisez ","color":"gray"},{"text":"/trigger ExitTutorial","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger ExitTutorial"},"hoverEvent":{"action":"show_text","contents":"Suggérer la commande"}},{"text":" pour ","color":"gray"},{"text":"en sortir","color":"gold"}]

# Command for exiting
execute store result score @s usedTrigger run scoreboard players enable @s ExitTutorial
execute if score @s usedTrigger matches 1 run function scaffolding_rush:tutorial/leave
