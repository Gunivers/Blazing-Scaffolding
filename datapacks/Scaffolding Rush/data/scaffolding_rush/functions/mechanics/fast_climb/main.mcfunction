# grants levitation to players moving upward in a scaffolding and not shifting

execute as @a[scores={climbing=1..,crouching=0}] at @s if block ~0.3 ~1 ~0.3 scaffolding run tag @s add fastClimbTick
execute as @a[scores={climbing=1..,crouching=0}] at @s if block ~-0.3 ~1 ~0.3 scaffolding run tag @s add fastClimbTick
execute as @a[scores={climbing=1..,crouching=0}] at @s if block ~0.3 ~1 ~-0.3 scaffolding run tag @s add fastClimbTick
execute as @a[scores={climbing=1..,crouching=0}] at @s if block ~-0.3 ~1 ~-0.3 scaffolding run tag @s add fastClimbTick


effect clear @a[tag=fastClimb,tag=!fastClimbTick] levitation
effect give @a[tag=!fastClimb,tag=fastClimbTick,tag=!inTutorial] levitation infinite 10

tag @a[tag=fastClimbTick] add fastClimb
tag @a[tag=!fastClimbTick] remove fastClimb

tag @a remove fastClimbTick

# reset the detection scores
scoreboard players set @a climbing 0
scoreboard players set @a crouching 0
