
execute if score @s sc.item.test.scaffolding > @s player.item.scaffolding_count run clear @s #scaffolding_rush:item/scaffolding
execute store result score @s sc.item.test.scaffolding run clear @s #scaffolding_rush:item/scaffolding 0

scoreboard players set @s sc.item.give.scaffolding 0
scoreboard players operation @s sc.item.give.scaffolding = @s player.item.scaffolding_count
scoreboard players operation @s sc.item.give.scaffolding -= @s sc.item.test.scaffolding

execute if score @s sc.item.give.scaffolding matches 1.. run loot give @s loot scaffolding_rush:item/scaffolding

