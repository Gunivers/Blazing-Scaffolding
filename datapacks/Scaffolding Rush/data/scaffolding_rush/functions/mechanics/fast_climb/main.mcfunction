
#grants levitation to players moving upward in a scaffolding and not shifting
effect clear @s levitation
effect give @s[scores={climbing=1..,crouching=0}] levitation 1 10

#reset the detection scores
scoreboard players set @s climbing 0
scoreboard players set @s crouching 0
