
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:0,Tags:["Flag","new","flagTwo"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:0,Tags:["FlagDisplay","flagTwo","selected"]},{id:"minecraft:armor_stand",NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:slime",Invulnerable:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Size:0,Passengers:[{id:"minecraft:slime",Team:"yellow_glow",Invulnerable:1b,Silent:1b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,Size:1,Passengers:[{id:"minecraft:slime",Team:"yellow_glow",Invulnerable:1b,Silent:1b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,Size:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}]}]}

execute as @e[type=armor_stand,tag=selected,tag=FlagDisplay,limit=1] run function scaffolding_rush:game/flag/banner/head/2

tag @e[type=armor_stand,tag=selected,limit=1] remove selected
