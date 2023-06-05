execute as @s at @s store result score @s XEntity run data get entity @s Pos[0]

execute if score @s[tag=!TutorialMessage1] XEntity matches -14.. run function scaffolding_rush:tutorial/messages/step1
execute if score @s[tag=!TutorialMessage2] XEntity matches -10.. run function scaffolding_rush:tutorial/messages/step2
execute if score @s[tag=!TutorialMessage3] XEntity matches -3.. run function scaffolding_rush:tutorial/messages/step3
execute if score @s[tag=!TutorialMessage4] XEntity matches 3.. run function scaffolding_rush:tutorial/messages/step4
execute if score @s[tag=!TutorialMessage5] XEntity matches 7.. run function scaffolding_rush:tutorial/messages/step5

execute if score @s XEntity matches 16.. run function scaffolding_rush:tutorial/leave

