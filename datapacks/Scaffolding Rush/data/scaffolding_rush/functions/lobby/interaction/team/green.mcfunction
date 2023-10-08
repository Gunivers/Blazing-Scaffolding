
execute as @a store result score @s uuid run data get entity @s UUID[0]
execute store result score @s interaction.uuid run data get entity @s interaction.player[0]

tag @s add interactionSelect

execute as @a[team=!green] if score @s uuid = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interaction.uuid at @s run function scaffolding_rush:team/join/green

tag @s remove interactionSelect
