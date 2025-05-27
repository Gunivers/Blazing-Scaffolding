# Summon a new flag in the playing area

summon area_effect_cloud ~ ~ ~ {Tags:["random"],Age:1}
execute store result score alea data run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
kill @e[type=area_effect_cloud,tag=random]

scoreboard players operation alea data %= 100 const
execute if score alea data matches ..-1 run scoreboard players operation alea data *= #-1 data

execute if score alea data matches 0..69 run function scaffolding_rush:game/flag/summon/1
execute if score alea data matches 70..94 run function scaffolding_rush:game/flag/summon/2
execute if score alea data matches 95..100 run function scaffolding_rush:game/flag/summon/5
