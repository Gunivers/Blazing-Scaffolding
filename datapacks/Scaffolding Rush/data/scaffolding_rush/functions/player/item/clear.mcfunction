# Execute as & at player

clear @s

scoreboard players set @s player.item.scaffolding_count 0
scoreboard players set @s player.item.sand_count 0
scoreboard players set @s player.item.fireball_count 0
scoreboard players set @s player.item.ender_pearl_count 0
scoreboard players set @s player.item.bumping_arrow_count 0

tag @s remove player.items.have_items
tag @s remove player.item.have_egg
