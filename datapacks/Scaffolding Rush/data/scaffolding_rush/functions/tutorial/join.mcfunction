
#increase the worldborder size 
worldborder set 3000

scoreboard players set TutorialPlacementRecursionStep data 0
execute positioned -1021.5 1 1000.5 run function scaffolding_rush:tutorial/room/step_right

# Trigger
scoreboard players set @s tutorial 0
scoreboard players set @s lobby 0
tag @s add player.item.can_have_items

loot replace entity @s hotbar.0 loot scaffolding_rush:scaffolding
# item replace entity @s hotbar.1 with minecraft:cyan_concrete_powder{HideFlags:24,CanPlaceOn:["#scaffolding_rush:scaffolding"],CanDestroy:["#scaffolding_rush:scaffolding","#scaffolding_rush:sand","#scaffolding_rush:concrete"]} 42

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s","color":"aqua"},{"text":" joined the tutorial ","color":"gray"},{"text":"[Join]","color":"green","clickEvent":{"action":"run_command","value":"/trigger tutorial"},"hoverEvent":{"action":"show_text","contents":"/trigger tutorial"}}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s","color":"aqua"},{"text":" a rejoint le tutoriel ","color":"gray"},{"text":"[Rejoindre]","color":"green","clickEvent":{"action":"run_command","value":"/trigger tutorial"},"hoverEvent":{"action":"show_text","contents":"/trigger tutorial"}}]

scoreboard players enable @s[tag=!inTutorial] tutorial
scoreboard players enable @s[tag=inTutorial] lobby
