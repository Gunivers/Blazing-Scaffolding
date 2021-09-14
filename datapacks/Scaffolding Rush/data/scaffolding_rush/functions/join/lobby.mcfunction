execute as @a[x=1000,y=128,z=1000,distance=..150] at @s run tp @s ~-1000 ~ ~-1000

gamemode survival
execute as @s run function scaffolding_rush:lobby/give_items

execute if score Admin options matches 1 as @a[tag=admin] run function scaffolding_rush:options/activate_all
execute if score Admin options matches 0 as @a run function scaffolding_rush:options/activate_all
scoreboard players enable @s opt_admin
