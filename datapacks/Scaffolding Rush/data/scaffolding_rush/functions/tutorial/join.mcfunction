
#increase the worldborder size in the dimension
#worldborder set 171

scoreboard players set TutorialPlacementRecursionStep global 0
execute positioned -21.5 1 0.5 in scaffolding_rush:tutorialworld run function scaffolding_rush:tutorial/room/step_right

tag @s remove HaveItems
clear @s
gamemode adventure @s

loot replace entity @s hotbar.0 loot scaffolding_rush:item/scaffolding
# item replace entity @s hotbar.1 with minecraft:cyan_concrete_powder{HideFlags:24,CanPlaceOn:["#scaffolding_rush:scaffolding"],CanDestroy:["#scaffolding_rush:scaffolding","#scaffolding_rush:sand"]} 42

scoreboard players set @s timer 0
scoreboard players enable @s ExitTutorial

