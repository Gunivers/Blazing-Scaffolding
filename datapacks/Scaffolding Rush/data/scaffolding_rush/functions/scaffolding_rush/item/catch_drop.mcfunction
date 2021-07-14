#executed as any item on the ground

data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0
tag @s add processed