execute if score DevelopementMode data matches 1 run say villager/summon/yellow

summon villager ~ ~ ~ {Attributes:[{Base:0d,Name:"minecraft:generic.movement_speed"},{Name:"minecraft:generic.knockback_resistance",Base:1d}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Health:8,Tags:["yellow_villager","new_villager","respawn_villager"],VillagerData:{type:"minecraft:jungle"}}


execute unless block ~ ~ ~ air run teleport @e[type=villager,tag=new_villager,tag=yellow_villager] ~ ~1 ~

kill @s[tag=villager.spawner.yellow]
