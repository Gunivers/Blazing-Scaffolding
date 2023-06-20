
execute if score @s sc.item.test.snowball > @s sc.item.real.snowball run clear @s #scaffolding_rush:item/snowball
execute store result score @s sc.item.test.snowball run clear @s #scaffolding_rush:item/snowball 0

scoreboard players set @s sc.item.give.snowball 0
scoreboard players operation @s sc.item.give.snowball = @s sc.item.real.snowball
scoreboard players operation @s sc.item.give.snowball -= @s sc.item.test.snowball

execute if score @s sc.item.give.snowball matches 1.. run loot give @s loot scaffolding_rush:item/snowball

