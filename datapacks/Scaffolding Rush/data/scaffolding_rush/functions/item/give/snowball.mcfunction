
execute if score @s sc.item.test.snowball > @s sc.item.real.snowball run clear @s #scaffolding_rush:item/snowball
execute store result score @s sc.item.test.snowball run clear @s #scaffolding_rush:item/snowball 0

scoreboard players operation #give_item tmp = @s sc.item.real.snowball
scoreboard players operation #give_item tmp -= @s sc.item.test.snowball

execute if score #give_item tmp matches 1.. run loot give @s loot scaffolding_rush:item/snowball

