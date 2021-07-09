clear @a[team=red] minecraft:ghast_spawn_egg 1
execute as @a[team=red,nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run schedule function loumardes:scaffolding_rush/villager/respawn/egg_conter/red 1s
