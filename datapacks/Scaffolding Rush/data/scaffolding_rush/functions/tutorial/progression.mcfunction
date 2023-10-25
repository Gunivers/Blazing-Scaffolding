execute as @s at @s store result score @s pos.x run data get entity @s Pos[0]
scoreboard players add @s pos.x 1000

execute if score @s[tag=!TutorialMessage1] pos.x matches -15.. run function scaffolding_rush:tutorial/messages/step1
execute if score @s[tag=!TutorialMessage2] pos.x matches -9.. run function scaffolding_rush:tutorial/messages/step2
execute if score @s[tag=!TutorialMessage3] pos.x matches -4.. run function scaffolding_rush:tutorial/messages/step3
execute if score @s[tag=!TutorialMessage4] pos.x matches 1.. run function scaffolding_rush:tutorial/messages/step4
execute if score @s[tag=!TutorialMessage5] pos.x matches 5.. run function scaffolding_rush:tutorial/messages/step5

execute if score @s pos.x matches 16.. run advancement grant @s only scaffolding_rush:rewards/tutorial/completed_tutorial
execute if score @s pos.x matches 16.. run function scaffolding_rush:tutorial/leave

# Proposes to skip the tutorial if the player was in the tutorial for over 10 min
scoreboard players add @s sc.timer.tutorial 1
execute if score @s sc.timer.tutorial matches 12000 run tellraw @s ["",{"text":"[BS] ","color":"gold"},{"translate":"blazing_scaffolding.stuck_in_the_tutorial","color":"gray"},{"text":"/trigger lobby","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger lobby"},"hoverEvent":{"action":"show_text","value":[{"translate":"blazing_scaffolding.suggest_command"}]}},{"translate":"blazing_scaffolding.to","color":"gray"},{"translate":"blazing_scaffolding.skip_it","color":"gold"}]

