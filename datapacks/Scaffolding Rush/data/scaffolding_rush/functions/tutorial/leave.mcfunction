
execute unless entity @e[type=marker,tag=TutorialCellClear,limit=1] run summon marker -1021.5 1 1000.5 {Tags:["TutorialCellClear"]}
execute store result entity @e[type=marker,tag=TutorialCellClear,limit=1] Pos[2] double 1 run scoreboard players get @s tutorial.cell.z
execute as @e[type=marker,tag=TutorialCellClear] at @s run function scaffolding_rush:tutorial/room/clear

function scaffolding_rush:join/lobby

tag @s remove TutorialMessage1
tag @s remove TutorialMessage2
tag @s remove TutorialMessage3
tag @s remove TutorialMessage4
tag @s remove TutorialMessage5

tag @s remove inTutorial

scoreboard players set @s trigger.tutorial 0
scoreboard players set @s trigger.lobby 0
scoreboard players enable @s trigger.tuto

function scaffolding_rush:player/item/clear
function scaffolding_rush:lobby/refresh_items

execute unless entity @a[tag=inTutorial] run function scaffolding_rush:options/map/wb_size_refresh

tellraw @a[scores={option.language=0}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s","color":"aqua"},{"text":" exited the tutorial ","color":"gray"},{"text":"[Join]","color":"green","clickEvent":{"action":"run_command","value":"/trigger tuto"},"hoverEvent":{"action":"show_text","contents":"/trigger tuto"}}]
tellraw @a[scores={option.language=1}] ["",{"text":"[BS] ","color":"gold"},{"selector":"@s","color":"aqua"},{"text":" est sorti du tutoriel ","color":"gray"},{"text":"[Rejoindre]","color":"green","clickEvent":{"action":"run_command","value":"/trigger tuto"},"hoverEvent":{"action":"show_text","contents":"/trigger tuto"}}]
