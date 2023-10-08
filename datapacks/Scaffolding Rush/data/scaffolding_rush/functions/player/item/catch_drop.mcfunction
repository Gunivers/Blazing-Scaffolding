#executed as any item on the ground

data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0
tag @s add processed

#if it's a villager egg, remove it, it has already be given back
kill @s[nbt={Item:{id:"minecraft:squid_spawn_egg"}}]
kill @s[nbt={Item:{id:"minecraft:slime_spawn_egg"}}]
kill @s[nbt={Item:{id:"minecraft:mooshroom_spawn_egg"}}]
kill @s[nbt={Item:{id:"minecraft:blaze_spawn_egg"}}]
