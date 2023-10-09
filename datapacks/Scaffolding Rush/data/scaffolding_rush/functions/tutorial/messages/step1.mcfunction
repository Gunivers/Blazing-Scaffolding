
tellraw @s[scores={option.language=0}] ["",{"text":"======================","color":"gray"},{"text":"\n\n"},{"text":"Tutorial [1/5]","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Scaffolding supports are created automatically","color":"white"},{"text":"\n\n"},{"text":"======================","color":"gray"}]
tellraw @s[scores={option.language=1}] ["",{"text":"======================","color":"gray"},{"text":"\n\n"},{"text":"Tutoriel [1/5]","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Les supports d'échaffaudage sont automatiquement créés","color":"white"},{"text":"\n\n"},{"text":"======================","color":"gray"}]
playsound block.note_block.bell ambient @s ~ ~ ~ 1000 1.41

tag @s add TutorialMessage1