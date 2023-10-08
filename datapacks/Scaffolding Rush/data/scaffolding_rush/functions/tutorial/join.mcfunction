
#increase the worldborder size 
worldborder set 3000

scoreboard players set TutorialPlacementRecursionStep data 0
execute positioned -1021.5 1 1000.5 run function scaffolding_rush:tutorial/room/step_right

# Trigger
scoreboard players set @s tuto 0
scoreboard players set @s lobby 0

loot replace entity @s hotbar.0 loot scaffolding_rush:item/scaffolding
# item replace entity @s hotbar.1 with minecraft:cyan_concrete_powder{HideFlags:24,CanPlaceOn:["#scaffolding_rush:scaffolding"],CanDestroy:["#scaffolding_rush:scaffolding","#scaffolding_rush:sand"]} 42

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s","color":"aqua"},{"text":" joined the tutorial ","color":"gray"},{"text":"[Join]","color":"green","clickEvent":{"action":"run_command","value":"/trigger tuto"},"hoverEvent":{"action":"show_text","contents":"/trigger tuto"}}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s","color":"aqua"},{"text":" a rejoint le tutoriel ","color":"gray"},{"text":"[Rejoindre]","color":"green","clickEvent":{"action":"run_command","value":"/trigger tuto"},"hoverEvent":{"action":"show_text","contents":"/trigger tuto"}}]

scoreboard players enable @s[tag=!inTutorial] tuto
scoreboard players enable @s[tag=inTutorial] lobby
