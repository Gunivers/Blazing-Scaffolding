# When the player has finished respawning
execute if score DevelopementMode global matches 1 run say game/death/player/respawn/loop_end

gamemode survival @s
function scaffolding_rush:team/create_base/armor

title @s[gamemode=!spectator] title ["",{"text":""}]
title @s[gamemode=!spectator] subtitle ["",{"text":""}]

execute as @s run function scaffolding_rush:game/give_items

tag @s remove Respawning
effect clear @s
