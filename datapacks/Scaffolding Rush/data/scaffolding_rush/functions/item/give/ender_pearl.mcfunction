
execute if score @s sc.item.test.ender_pearl > @s sc.item.real.ender_pearl run clear @s #scaffolding_rush:item/ender_pearl
execute store result score @s sc.item.test.ender_pearl run clear @s #scaffolding_rush:item/ender_pearl 0

scoreboard players operation #give_item tmp = @s sc.item.real.ender_pearl
scoreboard players operation #give_item tmp -= @s sc.item.test.ender_pearl

execute if score #give_item tmp matches 1.. run loot give @s loot scaffolding_rush:item/ender_pearl

