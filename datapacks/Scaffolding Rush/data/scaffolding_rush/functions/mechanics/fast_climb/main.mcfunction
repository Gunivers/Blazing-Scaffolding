# grants levitation to players moving upward in a scaffolding and not shifting

tag @a[scores={climbing=1..,crouching=0}] add fastClimbTick

effect clear @a[tag=fastClimb,tag=!fastClimbTick] levitation
effect give @a[tag=fastClimbTick] levitation 1 10

tag @a[tag=fastClimbTick] add fastClimb
tag @a[tag=!fastClimbTick] remove fastClimb

tag @a remove fastClimbTick

# reset the detection scores
scoreboard players set @a climbing 0
scoreboard players set @a crouching 0
