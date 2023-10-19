
execute as @a[tag=inTutorial,gamemode=!spectator] at @s run function scaffolding_rush:tutorial/progression

execute as @a[tag=inTutorial,scores={lobby=1}] run function scaffolding_rush:tutorial/leave
