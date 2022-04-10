summon arrow ~ ~ ~ {Silent:1b,damage:0.1,Tags:["snowArrow"]}
data modify entity @e[type=arrow,limit=1,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=arrow,limit=1,sort=nearest] LeftOwner set from entity @s LeftOwner
data modify entity @e[type=arrow,limit=1,sort=nearest] Motion set from entity @s Motion
kill @s

execute if score GameLoading global matches 0 run item replace entity @a[scores={usedSnowball=1..}] weapon.mainhand with air
execute if score GameLoading global matches 0 run item replace entity @a[scores={usedSnowball=1..}] weapon.mainhand with minecraft:snowball{CanDestroy:["minecraft:scaffolding","#scaffolding_rush:lobby","#scaffolding_rush:tower"]}

scoreboard players set @a usedSnowball 0
