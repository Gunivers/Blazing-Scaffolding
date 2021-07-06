execute if entity @e[name="Blue",tag=baseTeam] run clear @a squid_spawn_egg
execute unless entity @e[name="Blue",tag=baseTeam] as @a[nbt=!{Inventory:[{id:"minecraft:squid_spawn_egg"}]},team=blue] run function loumardes:scaffolding_rush/team/base_egg/blue
execute if entity @e[name="Green",tag=baseTeam] run clear @a slime_spawn_egg
execute unless entity @e[name="Green",tag=baseTeam] as @a[nbt=!{Inventory:[{id:"minecraft:slime_spawn_egg"}]},team=green] run function loumardes:scaffolding_rush/team/base_egg/green
execute if entity @e[name="Red",tag=baseTeam] run clear @a mooshroom_spawn_egg
execute unless entity @e[name="Red",tag=baseTeam] as @a[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg"}]},team=red] run function loumardes:scaffolding_rush/team/base_egg/red
execute if entity @e[name="Yellow",tag=baseTeam] run clear @a blaze_spawn_egg
execute unless entity @e[name="Yellow",tag=baseTeam] as @a[nbt=!{Inventory:[{id:"minecraft:blaze_spawn_egg"}]},team=yellow] run function loumardes:scaffolding_rush/team/base_egg/yellow
