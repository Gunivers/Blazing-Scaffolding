
execute if score @s sc.item.test.ender_pearl > @s sc.item.real.ender_pearl run clear @s #scaffolding_rush:item/ender_pearl
execute store result score @s sc.item.test.ender_pearl run clear @s #scaffolding_rush:item/ender_pearl 0

scoreboard players set @s sc.item.give.ender_pearl 0
scoreboard players operation @s sc.item.give.ender_pearl = @s sc.item.real.ender_pearl
scoreboard players operation @s sc.item.give.ender_pearl -= @s sc.item.test.ender_pearl

execute if score @s sc.item.give.ender_pearl matches 1.. run loot give @s loot scaffolding_rush:item/ender_pearl

