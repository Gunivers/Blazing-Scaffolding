
execute as @a[tag=inTutorial,gamemode=!spectator] at @s run function scaffolding_rush:tutorial/progression

execute in scaffolding_rush:tutorialworld as @e[type=falling_block,nbt={BlockState: {Name: "minecraft:scaffolding"}},x=-18,y=1,z=-100,dx=12,dy=100,dz=200] at @s if dimension scaffolding_rush:tutorialworld run summon minecraft:marker ~ ~ ~ {CustomName: '{"text":"ScR_Pillar"}'}
execute as @e[type=marker,name="ScR_Pillar"] at @s run function scaffolding_rush:mechanics/instant_pillar/start

execute as @a[tag=inTutorial] at @s if block ~ ~-0.0001 ~ #scaffolding_rush:lava run kill @s

execute as @a[tag=inTutorial,scores={lobby=1}] run function scaffolding_rush:tutorial/leave
