clear @s minecraft:ghast_spawn_egg 1
execute as @s[nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run schedule function loumardes:scaffolding_rush/villager/respawn/egg_conter 1s
