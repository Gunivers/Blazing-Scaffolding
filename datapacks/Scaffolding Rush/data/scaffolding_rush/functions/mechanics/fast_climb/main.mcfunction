
#grants levitation to players moving upward in a scaffolding and not shifting
effect clear @a levitation
effect give @a[scores={climbing=1..,crouching=0}] levitation 1 10

#reset the detection scores
scoreboard players set @a climbing 0
scoreboard players set @a crouching 0
