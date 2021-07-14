clear @a[team=yellow] minecraft:ghast_spawn_egg 1
execute as @a[team=yellow,nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run schedule function scaffolding_rush:villager/respawn/egg_counter/yellow 1s
