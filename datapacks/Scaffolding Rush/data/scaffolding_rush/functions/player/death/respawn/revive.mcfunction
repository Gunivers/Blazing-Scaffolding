
# Remove the "Red Screen"
item replace entity @s armor.head with air


execute positioned as @e[type=villager,tag=respawn_villager,tag=red_villager,limit=1,sort=nearest] run tp @s[team=red,tag=player.can_respawn,tag=!inTutorial] ~ ~ ~
execute positioned as @e[type=villager,tag=respawn_villager,tag=blue_villager,limit=1,sort=nearest] run tp @s[team=blue,tag=player.can_respawn,tag=!inTutorial] ~ ~ ~
execute positioned as @e[type=villager,tag=respawn_villager,tag=green_villager,limit=1,sort=nearest] run tp @s[team=green,tag=player.can_respawn,tag=!inTutorial] ~ ~ ~
execute positioned as @e[type=villager,tag=respawn_villager,tag=yellow_villager,limit=1,sort=nearest] run tp @s[team=yellow,tag=player.can_respawn,tag=!inTutorial] ~ ~ ~

execute if score #lobby.active data matches 1 run tp @s[tag=!player.can_respawn,tag=!inTutorial] 0 24 0 0 0
execute if score #lobby.active data matches 1 at @s run tp @s[tag=inTutorial] -1020 9 ~

gamemode adventure @s

function scaffolding_rush:team/create_base/armor

effect give @s minecraft:instant_health 1 127 true
effect give @s minecraft:resistance 2 127 true

tag @s remove player.is_dead
