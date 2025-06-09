# Execute as & at player

execute if entity @s[tag=inTutorial] run function scaffolding_rush:tutorial/leave
effect clear @s
clear @s
scoreboard players reset @s

tag @a remove player.item.can_have_items
tag @a remove player.item.have_egg
tag @a remove player.is_dead

function scaffolding_rush:player/setup