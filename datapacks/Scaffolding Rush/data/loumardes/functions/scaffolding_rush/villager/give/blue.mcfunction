tag @a[team=blue] remove has_egg
clear @a[team=blue] ghast_spawn_egg
clear @a[team=blue] squid_spawn_egg
execute as @e[type=villager,team=blue] run function loumardes:scaffolding_rush/clean_kill
execute as @s[nbt=!{SelectedItem:{id:"minecraft:scaffolding"}},nbt=!{SelectedItem:{id:"minecraft:blue_concrete_powder"}}] run replaceitem entity @s weapon.mainhand squid_spawn_egg{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"],display:{Name:'{"text":"Villager spawner","italic":false}'},EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:blue}}
execute as @s[nbt=!{Inventory:[{id:"minecraft:squid_spawn_egg"}]}] run give @s squid_spawn_egg{HideFlags:24,CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"],display:{Name:'{"text":"Villager spawner","italic":false}'},EntityTag:{id:"minecraft:villager",Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:blue}}
tag @s add has_egg
give @s squid_spawn_egg{CanPlaceOn:["minecraft:scaffolding","#loumardes:notowerlobby"],CanDestroy:["minecraft:scaffolding","#loumardes:lobby","#loumardes:tower"]}
