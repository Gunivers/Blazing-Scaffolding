
execute as @a store result score @s playerID run data get entity @s UUID[0]
execute store result score @s interactionID run data get entity @s interaction.player[0]

tag @s add interactionSelect

execute as @a[team=!red] if score @s playerID = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interactionID at @s run function scaffolding_rush:team/join/red

tag @s remove interactionSelect
