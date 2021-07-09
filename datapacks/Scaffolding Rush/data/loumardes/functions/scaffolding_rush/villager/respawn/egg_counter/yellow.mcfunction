clear @a[team=yellow] minecraft:ghast_spawn_egg 1
execute as @a[team=yellow,nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run schedule function loumardes:scaffolding_rush/villager/respawn/egg_conter/yellow 1s
