
execute as @a store result score @s uuid run data get entity @s UUID[0]
execute store result score @s interaction.uuid run data get entity @s interaction.player[0]

tag @s add interactionSelect

execute as @a if score @s uuid = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interaction.uuid run scoreboard players operation @s opt_preset = Preset options
execute as @a if score @s uuid = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interaction.uuid run scoreboard players operation @s opt_preset += 1 const

tag @s remove interactionSelect
