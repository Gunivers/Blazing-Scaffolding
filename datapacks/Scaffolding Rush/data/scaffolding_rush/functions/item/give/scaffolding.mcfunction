
execute if score @s sc.item.test.scaffolding > @s player.item.scaffolding_count run clear @s #scaffolding_rush:item/scaffolding
execute store result score @s sc.item.test.scaffolding run clear @s #scaffolding_rush:item/scaffolding 0

scoreboard players operation #give_item tmp = @s player.item.scaffolding_count
scoreboard players operation #give_item tmp -= @s sc.item.test.scaffolding

execute if score #give_item tmp matches 1.. run loot give @s loot scaffolding_rush:item/scaffolding

