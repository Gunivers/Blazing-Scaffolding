clear @a[team=green] minecraft:ghast_spawn_egg 1
execute as @a[team=green,nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run schedule function scaffolding_rush:scaffolding_rush/villager/respawn/egg_counter/green 1s
