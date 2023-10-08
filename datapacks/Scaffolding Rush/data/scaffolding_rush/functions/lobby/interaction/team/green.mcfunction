
execute as @a store result score @s UUID run data get entity @s UUID[0]
execute store result score @s interaction.UUID run data get entity @s interaction.player[0]

tag @s add interactionSelect

execute as @a[team=!green] if score @s UUID = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interaction.UUID at @s run function scaffolding_rush:team/join/green

tag @s remove interactionSelect
