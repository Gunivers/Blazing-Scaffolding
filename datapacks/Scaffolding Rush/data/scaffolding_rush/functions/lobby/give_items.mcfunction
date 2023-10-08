

# Color sand change
clear @s #scaffolding_rush:item/sand

scoreboard players set @s player.item.scaffolding_count 42

execute if score UseSand options matches 1 run scoreboard players set @s player.item.sand_count 42
execute if score UseFireball options matches 1 run scoreboard players set @s player.item.fireball_count 1
execute if score UseEnderPearl options matches 1 run scoreboard players set @s player.item.ender_pearl_count 1
execute if score UseSnowball options matches 1 run scoreboard players set @s player.item.bumping_arrow_count 15

