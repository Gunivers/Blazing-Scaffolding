
#increase the worldborder size 
worldborder set 3000

scoreboard players set TutorialPlacementRecursionStep data 0
execute positioned -1021.5 1 1000.5 run function scaffolding_rush:tutorial/room/step_right

# Trigger
scoreboard players set @s tutorial 0
scoreboard players set @s lobby 0
tag @s add player.item.can_have_items

loot replace entity @s hotbar.0 loot scaffolding_rush:scaffolding
clear @s #scaffolding_rush:sand

tellraw @a ["",{"text":"[BS] ","color":"gold"},{"selector":"@s","color":"aqua"},{"translate":"blazing_scaffolding.joined_the_tutorial","color":"gray"},{"translate":"blazing_scaffolding.join","color":"green","clickEvent":{"action":"run_command","value":"/trigger tutorial"},"hoverEvent":{"action":"show_text","contents":"/trigger tutorial"}}]

scoreboard players enable @s[tag=!inTutorial] tutorial
scoreboard players enable @s[tag=inTutorial] lobby
