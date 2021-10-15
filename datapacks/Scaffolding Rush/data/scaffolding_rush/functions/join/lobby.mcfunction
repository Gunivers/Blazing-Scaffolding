execute as @s[tag=InGame] at @s run function scaffolding_rush:lobby/tp_to_lobby

gamemode survival
execute as @s run function scaffolding_rush:lobby/give_items
function scaffolding_rush:lobby/base_egg/give

execute if score Admin options matches 1 as @a[tag=admin] run function scaffolding_rush:options/activate_all
execute if score Admin options matches 0 as @a run function scaffolding_rush:options/activate_all
scoreboard players enable @s opt_admin
