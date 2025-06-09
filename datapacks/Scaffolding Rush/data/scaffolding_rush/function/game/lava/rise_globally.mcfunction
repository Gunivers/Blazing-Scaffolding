summon marker ~ ~ ~ {Tags:["fill","new"]}
tp @s ~ ~1 ~

scoreboard objectives add fill dummy
scoreboard players set @e[type=marker,tag=new] fill -1

tag @e[type=marker,tag=new] remove new
schedule function scaffolding_rush:game/lava/global_rising/fill_0 2t
