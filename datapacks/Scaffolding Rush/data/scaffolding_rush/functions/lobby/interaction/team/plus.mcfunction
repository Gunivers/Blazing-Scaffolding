
execute as @a store result score @s playerID run data get entity @s UUID[0]
execute store result score @s interactionID run data get entity @s interaction.player[0]

tag @s add interactionSelect

execute as @a if score @s playerID = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interactionID run scoreboard players operation @s opt_team_number = TeamNumber options
execute as @a if score @s playerID = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interactionID run scoreboard players operation @s opt_team_number += #1 const

tag @s remove interactionSelect