execute unless score InteractibleLobby options matches 0 run summon arrow ~ ~ ~ {Silent:1b,damage:0.1,Tags:["snowArrow"]}
execute unless score InteractibleLobby options matches 0 run data modify entity @e[type=arrow,limit=1,sort=nearest] Owner set from entity @s Owner
execute unless score InteractibleLobby options matches 0 run data modify entity @e[type=arrow,limit=1,sort=nearest] LeftOwner set from entity @s LeftOwner
execute unless score InteractibleLobby options matches 0 run data modify entity @e[type=arrow,limit=1,sort=nearest] Motion set from entity @s Motion
execute unless score InteractibleLobby options matches 0 run kill @s

execute if score GameLoading global matches 0 run item replace entity @a[scores={usedSnowball=1..}] weapon.mainhand with air
execute if score GameLoading global matches 0 unless score InteractibleLobby options matches 0 run item replace entity @a[scores={usedSnowball=1..}] weapon.mainhand with minecraft:snowball{CanDestroy:["minecraft:scaffolding","#scaffolding_rush:tower"]}
execute if score GameLoading global matches 0 if score InteractibleLobby options matches 0 run item replace entity @a[scores={usedSnowball=1..}] weapon.mainhand with minecraft:snowball{CanDestroy:[]}

scoreboard players set @a usedSnowball 0
