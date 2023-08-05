
#increase the worldborder size 
worldborder set 3000

scoreboard players set TutorialPlacementRecursionStep global 0
execute positioned -1021.5 1 1000.5 run function scaffolding_rush:tutorial/room/step_right

# Trigger
scoreboard players set @s tuto 0
scoreboard players set @s lobby 0

loot replace entity @s hotbar.0 loot scaffolding_rush:item/scaffolding
# item replace entity @s hotbar.1 with minecraft:cyan_concrete_powder{HideFlags:24,CanPlaceOn:["#scaffolding_rush:scaffolding"],CanDestroy:["#scaffolding_rush:scaffolding","#scaffolding_rush:sand"]} 42

scoreboard players enable @s[tag=!inTutorial] tuto
scoreboard players enable @s[tag=inTutorial] lobby
