
# Reset Scores
function scaffolding_rush:item/clear_items

scoreboard players set @s sc.item.scaffolding 42

# Color sand change
clear @s #scaffolding_rush:item/sand
execute if score UseSand options matches 1 run scoreboard players set @s sc.item.sand 42
execute if score UseFireball options matches 1 run scoreboard players set @s sc.item.fireball 1
execute if score UseEnderPearl options matches 1 run scoreboard players set @s sc.item.ender_pearl 1
execute if score UseSnowball options matches 1 run scoreboard players set @s sc.item.snowball 15

tag @s add HaveItems
