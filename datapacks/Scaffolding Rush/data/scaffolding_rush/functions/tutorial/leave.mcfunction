
execute unless entity @e[type=marker,tag=TutorialCellClear,limit=1] in scaffolding_rush:tutorialworld run summon marker -21.5 1 0.5 {Tags:["TutorialCellClear"]}
execute store result entity @e[type=marker,tag=TutorialCellClear,limit=1] Pos[2] double 1 run scoreboard players get @s TutorialCellZ
execute as @e[type=marker,tag=TutorialCellClear] at @s run function scaffolding_rush:tutorial/room/clear

execute in overworld run tp @s 0 25 0 0 0
spawnpoint @s 0 25 0

tag @s remove TutorialMessage1
tag @s remove TutorialMessage2
tag @s remove TutorialMessage3
tag @s remove TutorialMessage4
tag @s remove TutorialMessage5

tag @s remove inTutorial

scoreboard players set @s tuto 0
scoreboard players set @s lobby 0
scoreboard players enable @s tuto

function scaffolding_rush:item/clear_items
function scaffolding_rush:lobby/give_items
