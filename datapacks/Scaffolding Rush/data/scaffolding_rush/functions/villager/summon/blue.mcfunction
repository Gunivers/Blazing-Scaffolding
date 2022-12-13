execute if score DevelopementMode global matches 1 run say villager/summon/blue

execute unless block ~ ~ ~ air run teleport @s ~ ~1 ~

execute at @s run summon villager ~ ~ ~ {Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:3,Team:blue,VillagerData:{type:"minecraft:snow"}}

kill @s[tag=VillagerSpawnerBlue]
