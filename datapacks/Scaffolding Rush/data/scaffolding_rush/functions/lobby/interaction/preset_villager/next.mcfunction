
execute as @a store result score @s UUID run data get entity @s UUID[0]
execute store result score @s interaction.UUID run data get entity @s interaction.player[0]

tag @s add interactionSelect

execute as @a if score @s UUID = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interaction.UUID run scoreboard players operation @s opt_preset = Preset options
execute as @a if score @s UUID = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interaction.UUID run scoreboard players operation @s opt_preset += 1 const

tag @s remove interactionSelect
