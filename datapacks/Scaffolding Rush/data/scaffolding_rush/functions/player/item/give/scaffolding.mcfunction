
execute if score @s player.item.test.scaffolding > @s player.item.scaffolding_count run clear @s #scaffolding_rush:scaffolding
execute store result score @s player.item.test.scaffolding run clear @s #scaffolding_rush:scaffolding 0

scoreboard players operation #give_item tmp = @s player.item.scaffolding_count
scoreboard players operation #give_item tmp -= @s player.item.test.scaffolding

execute if score #give_item tmp matches 1.. run loot give @s loot scaffolding_rush:scaffolding

