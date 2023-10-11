# Execute as & at player

function scaffolding_rush:tutorial/leave
effect clear @s
clear @s
scoreboard players reset @s

tag @a remove player.item.can_have_items
tag @a remove player.item.have_egg
tag @a remove player.is_dead

function scaffolding_rush:player/setup