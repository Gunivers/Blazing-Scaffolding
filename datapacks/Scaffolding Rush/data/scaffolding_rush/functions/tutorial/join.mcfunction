
#increase the worldborder size in the dimension
#worldborder set 171

scoreboard players set TutorialPlacementRecursionStep global 0
execute positioned -21.5 1 0.5 in scaffolding_rush:tutorialworld run function scaffolding_rush:tutorial/room/step_right

# Trigger
scoreboard players set @s tuto 0
scoreboard players set @s lobby 0

scoreboard players enable @s[tag=!inTutorial] tuto
scoreboard players enable @s[tag=inTutorial] lobby
