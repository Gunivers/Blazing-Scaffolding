
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:0,Tags:["Flag","new","flagFive"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:0,Tags:["FlagDisplay","flagFive","selected"]},{id:"minecraft:armor_stand",NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:slime",Invulnerable:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Size:0,Passengers:[{id:"minecraft:slime",Team:"cyan_glow",Invulnerable:1b,Silent:1b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,Size:1,Passengers:[{id:"minecraft:slime",Team:"cyan_glow",Invulnerable:1b,Silent:1b,Glowing:1b,PersistenceRequired:1b,NoAI:1b,Size:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}]}]}
summon minecraft:armor_stand ~ ~-2 ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:0,Tags:["Flag","new","selected","flagFive"]}

execute as @e[type=armor_stand,tag=selected,tag=FlagDisplay,limit=1] run function scaffolding_rush:game/flag/banner/head/5

tag @e[type=armor_stand,tag=selected,limit=1] remove selected
