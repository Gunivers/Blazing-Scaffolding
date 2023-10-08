
execute if score @s player.item.test.ender_pearl > @s player.item.real.ender_pearl run clear @s #scaffolding_rush:ender_pearl
execute store result score @s player.item.test.ender_pearl run clear @s #scaffolding_rush:ender_pearl 0

scoreboard players operation #give_item tmp = @s player.item.real.ender_pearl
scoreboard players operation #give_item tmp -= @s player.item.test.ender_pearl

execute if score #give_item tmp matches 1.. run loot give @s loot scaffolding_rush:ender_pearl

