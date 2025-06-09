
tag @s remove facing_villager

execute as @s[team=blue] at @s if entity @e[type=villager,tag=blue_villager,distance=..3] anchored eyes facing entity @e[type=villager,tag=blue_villager,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.4] run tag @s add facing_villager

execute as @s[team=green] at @s if entity @e[type=villager,tag=green_villager,distance=..3] anchored eyes facing entity @e[type=villager,tag=green_villager,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.4] run tag @s add facing_villager

execute as @s[team=red] at @s if entity @e[type=villager,tag=red_villager,distance=..3] anchored eyes facing entity @e[type=villager,tag=red_villager,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.4] run tag @s add facing_villager

execute as @s[team=yellow] at @s if entity @e[type=villager,tag=yellow_villager,distance=..3] anchored eyes facing entity @e[type=villager,tag=yellow_villager,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.4] run tag @s add facing_villager
