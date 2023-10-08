
execute as @a store result score @s uuid run data get entity @s UUID[0]
execute store result score @s interaction.uuid run data get entity @s interaction.player[0]

tag @s add interactionSelect

execute as @a if score @s uuid = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interaction.uuid run tellraw @s ["",{"text":"\n"},{"text":"  Welcome on ","color":"gold"},{"text":"Blazing Scaffolding","bold":true,"color":"gold"},{"text":"\u2122!","color":"gold"},{"text":"\n"},{"text":"      a game by the ","color":"gray"},{"text":"Gunivers community","color":"gold","clickEvent":{"action":"open_url","value":"https://gunivers.net/"}},{"text":"\n\n"},{"text":"   ","color":"light_purple"},{"text":"[Link to the map]","color":"light_purple","clickEvent":{"action":"open_url","value":"https://gunivers.net/blazing-scaffolding/"}},{"text":"  "},{"text":"[Discord]","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/E8qq6tN"}},{"text":"\n"}]
execute as @a if score @s uuid = @e[type=minecraft:interaction,tag=interactionSelect,limit=1] interaction.uuid at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 1 1 1

tag @s remove interactionSelect
