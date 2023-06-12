
execute if score tick200 global matches 1 as @e[type=villager,tag=teamJoinVillager,sort=random,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[type=villager,tag=teamJoinVillager,sort=random,limit=1,distance=1..]
execute if score tick200 global matches 20 as @e[type=villager,tag=teamJoinVillager,sort=random,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[type=villager,tag=teamJoinVillager,sort=random,limit=1,distance=1..]

execute if score tick200 global matches 1 run schedule function scaffolding_rush:lobby/text/team/restore_villager_pos/blue 60t
execute if score TeamNumber options matches 4.. if score tick200 global matches 1 run schedule function scaffolding_rush:lobby/text/team/restore_villager_pos/green 65t
execute if score tick200 global matches 1 run schedule function scaffolding_rush:lobby/text/team/restore_villager_pos/red 75t
execute if score TeamNumber options matches 3.. if score tick200 global matches 1 run schedule function scaffolding_rush:lobby/text/team/restore_villager_pos/yellow 70t
