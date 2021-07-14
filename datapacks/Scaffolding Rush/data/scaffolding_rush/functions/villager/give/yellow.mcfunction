tag @a[team=yellow] remove has_egg
clear @a[team=yellow] ghast_spawn_egg
clear @a[team=yellow] blaze_spawn_egg
execute as @e[type=villager,team=yellow] run function scaffolding_rush:clean_kill
execute as @s[nbt=!{SelectedItem:{}}] run replaceitem entity @s weapon.mainhand blaze_spawn_egg{display:{Name:'{"text":"Villager spawner","italic":false}'},EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:yellow}}
execute as @s[nbt=!{Inventory:[{id:"minecraft:blaze_spawn_egg"}]}] run give @s blaze_spawn_egg{display:{Name:'{"text":"Villager spawner","italic":false}'},EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:yellow}}
tag @s add has_egg

advancement revoke @a only scaffolding_rush:grab_villager/yellow
