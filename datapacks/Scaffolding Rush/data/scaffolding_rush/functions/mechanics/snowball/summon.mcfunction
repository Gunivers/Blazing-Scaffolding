summon arrow ~ ~ ~ {Silent:1b,damage:0.1,Tags:["snowArrow"]}
data modify entity @e[type=arrow,limit=1,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=arrow,limit=1,sort=nearest] LeftOwner set from entity @s LeftOwner
data modify entity @e[type=arrow,limit=1,sort=nearest] Motion set from entity @s Motion

tag @s add snowballSelect

execute as @a store result score @s uuid run data get entity @s UUID[0]
execute store result score @s interaction.uuid run data get entity @s Owner[0]

execute as @a if score @s uuid = @e[type=minecraft:snowball,tag=snowballSelect,limit=1] interaction.uuid run tag @s add playerSelect

scoreboard players remove @a[tag=playerSelect] player.item.real.snowball 1


# item replace entity @a[scores={listener.use.snowball=1..}] weapon.mainhand with air
# loot replace entity @a[scores={listener.use.snowball=1..}] weapon.mainhand loot scaffolding_rush:snowball

scoreboard players set @a listener.use.snowball 0
tag @s remove snowballSelect
tag @a remove playerSelect

kill @s
