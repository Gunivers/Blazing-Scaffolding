
execute as @a store result score @s UUID run data get entity @s UUID[0]
execute store result score @s interaction.UUID run data get entity @s interaction.player[0]

tag @s add interactionSelect

#... run scoreboard players operation @s opt_random_team = 1 const
execute as @a if score @s UUID = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interaction.UUID run function scaffolding_rush:team/random

tag @s remove interactionSelect