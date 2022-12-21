
execute as @e[tag=baseTeam] at @s run function scaffolding_rush:team/create_base/rise/hollow_summon
execute as @e[type=armor_stand,tag=hollow_base] at @s run teleport ~ ~1 ~
execute as @e[tag=baseTeam] at @s positioned ~-3 ~ ~-3 run effect give @e[type=!marker,tag=!hollow_base,dx=6,dy=3,dz=6,nbt={OnGround:1b}] minecraft:levitation 1 1 true

schedule function scaffolding_rush:team/create_base/rise/rise_solid 1s
schedule function scaffolding_rush:team/create_base/rise/hollow_kill 1.1s
