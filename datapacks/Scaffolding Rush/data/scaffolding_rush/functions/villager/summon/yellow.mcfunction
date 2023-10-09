execute if score DevelopementMode data matches 1 run say villager/summon/yellow

execute if score #villager.cannot_fall_in_lava options matches 0 run summon villager ~ ~ ~ {Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:8,Tags:["yellow_villager","new_villager","respawn_villager"],VillagerData:{type:"minecraft:jungle"},Invulnerable:0b}
execute unless score #villager.cannot_fall_in_lava options matches 0 run summon villager ~ ~ ~ {Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:8,Tags:["yellow_villager","new_villager","respawn_villager"],VillagerData:{type:"minecraft:jungle"},Invulnerable:1b}

execute unless block ~ ~ ~ air run teleport @e[type=villager,tag=new_villager,tag=yellow_villager] ~ ~1 ~

kill @s[tag=VillagerSpawnerYellow]
execute as @a[team=yellow] run function scaffolding_rush:villager/egg/clear
