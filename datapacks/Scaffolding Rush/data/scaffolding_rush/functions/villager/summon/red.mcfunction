execute if score DevelopementMode global matches 1 run say villager/summon/red

execute if score InvulnerableVillager options matches 0 run summon villager ~ ~ ~ {Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:8,Tags:["red_villager","new_villager"],VillagerData:{type:"minecraft:savanna"},Invulnerable:0b}
execute unless score InvulnerableVillager options matches 0 run summon villager ~ ~ ~ {Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:8,Tags:["red_villager","new_villager"],VillagerData:{type:"minecraft:savanna"},Invulnerable:1b}

execute unless block ~ ~ ~ air run teleport @e[type=villager,tag=new_villager,tag=red_villager] ~ ~1 ~

kill @s[tag=VillagerSpawnerRed]
execute as @a[team=red] run function scaffolding_rush:villager/egg/clear
