clear @a[team=green] minecraft:ghast_spawn_egg 1
execute as @s[team=green,nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run schedule function loumardes:scaffolding_rush/villager/respawn/egg_conter/green 1s
