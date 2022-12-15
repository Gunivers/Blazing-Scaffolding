# When the player has finished respawning
execute if score DevelopementMode global matches 1 run say game/death/player/respawn/loop_end

gamemode survival @s
function scaffolding_rush:team/create_base/armor

title @s[gamemode=!spectator] title ["",{"text":""}]
title @s[gamemode=!spectator] subtitle ["",{"text":""}]

execute as @s run function scaffolding_rush:game/give_items

teleport @s[team=red] @e[type=villager,team=red,limit=1]
teleport @s[team=blue] @e[type=villager,team=blue,limit=1]
teleport @s[team=yellow] @e[type=villager,team=yellow,limit=1]
teleport @s[team=green] @e[type=villager,team=green,limit=1]

tag @s remove Respawning
effect clear @s
