gamemode survival
teleport @s 0 4 0 0 0
clear @s
execute as @s run function scaffolding_rush:lobby/give_items

execute if score Admin options matches 1.. as @a[tag=admin] run function scaffolding_rush:options/activate_all
execute if score Admin options matches 0 as @a run function scaffolding_rush:options/activate_all
scoreboard players enable @s opt_admin
