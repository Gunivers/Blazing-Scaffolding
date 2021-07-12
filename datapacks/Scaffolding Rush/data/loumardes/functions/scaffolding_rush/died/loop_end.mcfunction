gamemode survival @s
function loumardes:scaffolding_rush/team/create_base/armor

execute as @s run function loumardes:scaffolding_rush/game/give_items

tag @s remove Respawning
effect clear @s
