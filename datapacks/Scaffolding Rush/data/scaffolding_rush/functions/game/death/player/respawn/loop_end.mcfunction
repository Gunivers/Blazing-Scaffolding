# When the player has finished respawning
execute if score DevelopementMode data matches 1 run say game/death/player/respawn/loop_end

title @s title ["",{"text":""}]
title @s subtitle ["",{"text":""}]

teleport @s[team=red] @e[type=villager,tag=game.villager,tag=red_villager,limit=1]
teleport @s[team=blue] @e[type=villager,tag=game.villager,tag=blue_villager,limit=1]
teleport @s[team=yellow] @e[type=villager,tag=game.villager,tag=yellow_villager,limit=1]
teleport @s[team=green] @e[type=villager,tag=game.villager,tag=green_villager,limit=1]

function scaffolding_rush:game/death/player/revive
