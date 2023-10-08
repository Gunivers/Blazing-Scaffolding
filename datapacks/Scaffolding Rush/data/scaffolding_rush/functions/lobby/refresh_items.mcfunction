
# Reset Scores
function scaffolding_rush:player/item/clear

execute positioned -6 24 -5 unless entity @s[dx=14,dy=14,dz=14] run function scaffolding_rush:lobby/give_items

clear @s written_book
loot replace entity @s hotbar.8 loot scaffolding_rush:lobby_book

tag @s add player.items.have_items
