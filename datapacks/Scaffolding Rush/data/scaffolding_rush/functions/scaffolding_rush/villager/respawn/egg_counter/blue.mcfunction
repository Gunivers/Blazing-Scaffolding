clear @a[team=blue] minecraft:ghast_spawn_egg 1
execute as @a[team=blue,nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run schedule function scaffolding_rush:scaffolding_rush/villager/respawn/egg_counter/blue 1s
