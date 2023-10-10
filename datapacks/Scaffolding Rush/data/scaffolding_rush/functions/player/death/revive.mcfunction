
tag @s remove Respawning
effect clear @s

effect give @s instant_health 1 20
execute if score #gameplay.regeneration.enabled options matches 1 run effect give @s regeneration infinite 0 true

function scaffolding_rush:team/create_base/armor

gamemode survival @s
