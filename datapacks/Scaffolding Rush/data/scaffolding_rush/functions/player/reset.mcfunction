# Execute as & at player

effect @s clear
clear @s
scoreboard players reset @s

tag @a remove player.item.can_have_items
tag @a remove player.item.have_egg

function scaffolding_rush:player/setup