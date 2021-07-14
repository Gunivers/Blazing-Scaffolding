clear @a[team=red] minecraft:ghast_spawn_egg 1
execute as @a[team=red,nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run schedule function scaffolding_rush:scaffolding_rush/villager/respawn/egg_counter/red 1s
