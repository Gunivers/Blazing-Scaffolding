
title @s title {"text":""}
title @s subtitle {"text":""}

gamemode spectator @s
scoreboard players set @s respawn.timer 0
execute if entity @s[tag=player.can_respawn] run function scaffolding_rush:player/death/respawn/revive
execute if score #lobby.active data matches 1 if entity @s[tag=!player.can_respawn] run function scaffolding_rush:player/death/respawn/revive


