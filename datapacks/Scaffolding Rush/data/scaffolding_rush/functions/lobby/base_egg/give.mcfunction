kill @e[type=minecraft:item]
execute if entity @e[name="Blue",tag=baseTeam] run clear @a squid_spawn_egg
execute as @a[team=blue] unless entity @e[name="Blue",tag=baseTeam] as @s[nbt=!{Inventory:[{id:"minecraft:squid_spawn_egg"}]}] run function scaffolding_rush:lobby/base_egg/blue
execute if entity @e[name="Green",tag=baseTeam] run clear @a slime_spawn_egg
execute as @a[team=green] unless entity @e[name="Green",tag=baseTeam] as @s[nbt=!{Inventory:[{id:"minecraft:slime_spawn_egg"}]}] run function scaffolding_rush:lobby/base_egg/green
execute if entity @e[name="Red",tag=baseTeam] run clear @a mooshroom_spawn_egg
execute as @a[team=red] unless entity @e[name="Red",tag=baseTeam] as @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg"}]}] run function scaffolding_rush:lobby/base_egg/red
execute if entity @e[name="Yellow",tag=baseTeam] run clear @a blaze_spawn_egg
execute as @a[team=yellow] unless entity @e[name="Yellow",tag=baseTeam] as @s[nbt=!{Inventory:[{id:"minecraft:blaze_spawn_egg"}]}] run function scaffolding_rush:lobby/base_egg/yellow

kill @e[type=minecraft:item,nbt={Item:{tag:{EntityTag:{Tags:["baseTeam"]}}}}]