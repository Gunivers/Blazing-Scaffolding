tag @a[team=red] remove has_egg
clear @a[team=red] ghast_spawn_egg
clear @a[team=red] mooshroom_spawn_egg
execute as @e[type=villager,team=red] run function scaffolding_rush:clean_kill
execute as @s[nbt=!{SelectedItem:{}}] run replaceitem entity @s weapon.mainhand mooshroom_spawn_egg{display:{Name:'{"text":"Villager spawner","italic":false}'},EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:red}}
execute as @s[nbt=!{Inventory:[{id:"minecraft:mooshroom_spawn_egg"}]}] run give @s mooshroom_spawn_egg{display:{Name:'{"text":"Villager spawner","italic":false}'},EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:red}}
tag @s add has_egg

advancement revoke @a only scaffolding_rush:grab_villager/red
