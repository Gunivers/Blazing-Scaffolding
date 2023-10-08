
execute if score @s player.item.test.snowball > @s player.item.real.snowball run clear @s #scaffolding_rush:snowball
execute store result score @s player.item.test.snowball run clear @s #scaffolding_rush:snowball 0

scoreboard players operation #give_item tmp = @s player.item.real.snowball
scoreboard players operation #give_item tmp -= @s player.item.test.snowball

execute if score #give_item tmp matches 1.. run loot give @s loot scaffolding_rush:snowball

