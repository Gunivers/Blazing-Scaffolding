
tag @s remove Respawning
effect clear @s

effect give @s instant_health 1 20
execute if score Regen options matches 1 run effect give @s regeneration infinite 0 true

execute as @s run function scaffolding_rush:game/give_items
function scaffolding_rush:team/create_base/armor

gamemode survival @s
