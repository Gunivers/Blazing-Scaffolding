
execute if score @s player.item.test.fireball > @s player.item.real.fireball run clear @s #scaffolding_rush:fireball
execute store result score @s player.item.test.fireball run clear @s #scaffolding_rush:fireball 0

scoreboard players operation #give_item tmp = @s player.item.real.fireball
scoreboard players operation #give_item tmp -= @s player.item.test.fireball

execute if score #give_item tmp matches 1.. run loot give @s loot scaffolding_rush:fireball

